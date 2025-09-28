// JS for interactions (expand later if needed)

// Highlight active nav item dynamically
document.querySelectorAll(".navbar a").forEach(link => {
    link.addEventListener("click", function () {
        document.querySelector(".navbar a.active")?.classList.remove("active");
        this.classList.add("active");
    });
});

// Example button click
document.querySelector(".cta-btn").addEventListener("click", () => {
    alert("Starting presentation...");
});
