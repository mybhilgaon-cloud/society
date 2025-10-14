package com.group.swastik.base.service;

import java.io.IOException;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.cloud.storage.BlobId;
import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageException;
import com.treat.application.infra.ClamAVClient;

@Service
public class GCSUploadService {
    private static final Logger log = LoggerFactory.getLogger(GCSUploadService.class);

    @Value("${gcp.bucket.name}")
    private String bucketName;

    // --- NEW: optional media safety controls (all OFF by default) ---
    @Value("${app.media.validation.enabled:false}")
    private boolean validationEnabled;

    @Value("${app.media.allow-mime:image/png,image/jpeg,image/webp,video/mp4,video/webm}")
    private String allowedMimeCsv;

    @Value("${app.media.max-bytes:15728640}") // 15MB default to match servlet limits
    private long maxBytes;

    @Value("${app.media.clamav.enabled:false}")
    private boolean clamEnabled;

    @Value("${app.media.clamav.host:localhost}")
    private String clamHost;

    @Value("${app.media.clamav.port:3310}")
    private int clamPort;

    private final Storage storage;

    public GCSUploadService(Storage storage) {
        this.storage = storage;
        log.debug("GCSUploadService initialized; bucket will be resolved at runtime");
    }

    // --- Safe URL path encoders (keep slashes as path separators) ---
    private static String encodeSegment(String s) {
        return java.net.URLEncoder.encode(s, java.nio.charset.StandardCharsets.UTF_8)
                .replace("+", "%20"); // keep spaces as %20
    }

    private static String encodeObjectPath(String objectName) {
        if (objectName == null) return "";
        String[] parts = objectName.split("/");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < parts.length; i++) {
            if (i > 0) sb.append('/');
            sb.append(encodeSegment(parts[i]));
        }
        return sb.toString();
    }

    /** Build a public URL for an object, preserving '/' as real path separators. */
    public String buildPublicUrl(String objectName) {
        String encodedPath = encodeObjectPath(objectName);
        return "https://storage.googleapis.com/" + bucketName + "/" + encodedPath;
    }

    // ====== Public APIs (backwards compatible) ======

    /** Upload cover photo as covers/<userId>.<ext> and return public URL */
    public String uploadCoverPhotoByUserId(MultipartFile file, Long userId) throws IOException {
        if (file == null || file.isEmpty()) throw new IllegalArgumentException("File cannot be null or empty");
        if (userId == null) throw new IllegalArgumentException("userId required");
        String ext = inferExt(file);
        String objectName = "covers/" + userId + "." + ext;
        return putObject(file, objectName);
    }

    /**
     * Existing method used elsewhere (e.g., during /register).
     * Uploads to "<avatar>/<originalFileName>" and returns public URL.
     */
    public String uploadImage(MultipartFile file, String avatar) throws IOException {
        if (file == null || file.isEmpty()) throw new IllegalArgumentException("File cannot be null or empty");
        String fileName = file.getOriginalFilename();
        if (fileName == null || fileName.isBlank()) throw new IllegalArgumentException("File name cannot be null or empty");
        String folderPath = (avatar == null || avatar.isBlank() ? "" : avatar.trim());
        if (!folderPath.isEmpty() && !folderPath.endsWith("/")) folderPath += "/";
        String objectName = folderPath + fileName;
        return putObject(file, objectName);
    }

    /** Backward-compatible wrapper to satisfy AuthService.uploadAvatar(...). */
    public String uploadAvatar(MultipartFile file, String avatarFolder) throws IOException {
        return uploadImage(file, avatarFolder);
    }

    /** Helper for profile pics naming: "profilpics/{userId}.{ext}" */
    public String uploadProfilePhotoByUserId(MultipartFile file, Long userId) throws IOException {
        if (file == null || file.isEmpty()) throw new IllegalArgumentException("File cannot be null or empty");
        if (userId == null) throw new IllegalArgumentException("userId required");
        String ext = inferExt(file);
        String objectName = "profilpics/" + userId + "." + ext; // keep existing path
        return putObject(file, objectName);
    }

    // Generic uploader for any folder
    public String uploadToFolder(String folder, MultipartFile file) throws IOException {
        if (file == null || file.isEmpty()) throw new IllegalArgumentException("File cannot be null or empty");
        if (bucketName == null || bucketName.isBlank()) throw new IllegalStateException("gcp.bucket.name is not configured");

        String cleanFolder = (folder == null) ? "" : folder.trim();
        if (cleanFolder.startsWith("/")) cleanFolder = cleanFolder.substring(1);
        if (!cleanFolder.isEmpty() && !cleanFolder.endsWith("/")) cleanFolder += "/";

        String original = file.getOriginalFilename();
        String safeName = (original == null || original.isBlank())
                ? ("file_" + System.currentTimeMillis())
                : original.replaceAll("\\s+", "_");

        String objectName = cleanFolder + System.currentTimeMillis() + "_" + safeName;
        return putObject(file, objectName);
    }

    // ====== Internal helpers ======

    private String putObject(MultipartFile file, String objectName) throws IOException {
        if (bucketName == null || bucketName.isBlank()) {
            throw new IllegalStateException("gcp.bucket.name is not configured");
        }

        // Optional size & MIME checks (only if validation enabled)
        if (validationEnabled) {
            if (file.getSize() > maxBytes) {
                throw new IllegalArgumentException("File too large");
            }
            Set<String> allowed = Set.of(allowedMimeCsv.split(","));
            String ct = file.getContentType();
            if (ct == null || ct.isBlank()) ct = "application/octet-stream";
            if (!allowed.contains(ct)) {
                throw new IllegalArgumentException("Unsupported MIME type: " + ct);
            }
        }

        // Optional ClamAV scan
        if (validationEnabled && clamEnabled) {
            try (ClamAVClient clam = new ClamAVClient(clamHost, clamPort)) {
                boolean clean = clam.scan(file.getInputStream());
                if (!clean) {
                    throw new IllegalStateException("Malware detected in uploaded file");
                }
            } catch (Exception e) {
                log.warn("ClamAV scan failed: {}", e.getMessage());
                throw new IOException("Virus scan failed", e);
            }
        }

        log.debug("Uploading file to GCS: bucket={}, object={}", bucketName, objectName);
        try {
            BlobId blobId = BlobId.of(bucketName, objectName);
            String ct = file.getContentType();
            if (ct == null || ct.isBlank()) ct = "application/octet-stream";

            BlobInfo blobInfo = BlobInfo.newBuilder(blobId)
                    .setContentType(ct)
                    .build();

            storage.create(blobInfo, file.getBytes());

            String fileUrl = buildPublicUrl(objectName);
            log.info("Successfully uploaded to GCS: {}", fileUrl);
            return fileUrl;
        } catch (StorageException e) {
            log.error("Failed to upload to GCS: bucket={}, object={}, error={}",
                    bucketName, objectName, e.getMessage(), e);
            throw new IOException("Failed to upload file to GCS", e);
        }
    }

    private String inferExt(MultipartFile file) {
        String ct = file.getContentType();
        if (ct != null) {
            ct = ct.toLowerCase();
            if (ct.contains("png")) return "png";
            if (ct.contains("webp")) return "webp";
            if (ct.contains("jpeg") || ct.contains("jpg")) return "jpg";
            if (ct.contains("gif")) return "gif";
        }
        String name = file.getOriginalFilename();
        if (name != null && name.contains(".")) {
            String rawExt = name.substring(name.lastIndexOf('.') + 1).toLowerCase();
            if (rawExt.matches("png|jpg|jpeg|webp|gif")) return rawExt.equals("jpeg") ? "jpg" : rawExt;
        }
        return "jpg";
    }
}
