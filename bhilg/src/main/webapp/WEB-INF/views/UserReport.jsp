<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Registered Users Report - People of Bhilgaon</title>

  <!-- Favicons -->
  <link href="/resource/nh/assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

  <!-- Vendor CSS -->
  <link href="/resource/nh/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

  <style>
  
  .bg-white {
    --bs-bg-opacity: 1;
    background-color: #1d3f7b;
}
    :root { --brand: #871F35; }
    body {
      font-family: 'Inter', sans-serif;
      background: #f8f9fa;
    }
    .sitename {
      font-family: 'Poppins', sans-serif;
      font-weight: 800;
      color: #1d3f7b;
    }
    .card-header {
      background: #0d6efd !important;
      color: white !important;
    }
    .table-responsive { overflow-x: auto; }
    table { min-width: 650px; }
  </style>
</head>
<body class="index-page">

  <!-- ===== Mobile Friendly Header with Hamburger ===== -->
  <header id="header" class="header sticky-top bg-white">
    <div class="topbar d-flex align-items-center" style="background:#f8f9fa;">
      <div class="container d-flex justify-content-center justify-content-md-between py-1">
        <div class="contact-info d-flex align-items-center gap-3">
          <i class="bi bi-envelope"></i>
          <a href="mailto:mybhilgaon@gmail.com">mybhilgaon@gmail.com</a>
        </div>
        <select id="langSelect" class="form-select form-select-sm" style="width:140px;">
          <option value="en">English</option>
          <option value="hi">हिन्दी</option>
          <option value="mr">मराठी</option>
        </select>
      </div>
    </div>

    <div class="branding py-3">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light p-0">
          <a href="/home" class="navbar-brand">
            <h1 class="sitename mb-0 fs-4" data-i18n="siteName">People Of Bhilgaon</h1>
          </a>
          
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                  aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item"><a href="/home" class="nav-link" data-i18n="navHome">Home</a></li>
              <li class="nav-item"><a href="/register" class="nav-link" data-i18n="navRegister">Register</a></li>
              <li class="nav-item"><a href="/login" class="nav-link" data-i18n="navLogin">Login</a></li>
              <li class="nav-item"><a href="/event" class="nav-link" data-i18n="navEvents">Events</a></li>
              <li class="nav-item"><a href="#gallery" class="nav-link" data-i18n="navPhotos">Photos</a></li>
              <li class="nav-item"><a href="#contact" class="nav-link" data-i18n="navContact">Contact</a></li>
            </ul>
            <a href="/event" class="btn btn-primary ms-lg-3">Upcoming Events</a>
          </div>
        </nav>
      </div>
    </div>
  </header>

  <!-- ===== Report Content ===== -->
  <main class="container mt-5 mb-5">
    <div class="card shadow">
      <div class="card-header">
        <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
          <h3 class="mb-0">Registered Users Report</h3>
          <a href="${pageContext.request.contextPath}/reports/users/pdf" class="btn btn-light">
            <i class="bi bi-download"></i> Download PDF
          </a>
        </div>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>#</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Mobile</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${users}" var="user" varStatus="loop">
                <tr>
                  <td>${loop.index + 1}</td>
                  <td>${user.fullname}</td>
                  <td>${user.email}</td>
                  <td>${user.mobile}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </main>

  <!-- Footer -->
  <footer id="footer" class="footer light-background py-4">
    <div class="container text-center">
      <p>© <span>Copyright</span> <strong class="sitename" data-i18n="siteNameFooter">People Of Bhilgaon - Aniket Verma</strong></p>
      <div class="credits" data-i18n="credits">Maintained By People Of Bhilgaon</div>
    </div>
  </footer>

  <!-- Scripts -->
  <script src="/resource/nh/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Language Script -->
  <script>
    (function(){
      const sel = document.getElementById("langSelect");
      if (sel) {
        sel.addEventListener("change", (e) => {
          console.log("Language changed to:", e.target.value);
          // Add full translation logic if needed
        });
      }
    })();
  </script>
</body>
</html>