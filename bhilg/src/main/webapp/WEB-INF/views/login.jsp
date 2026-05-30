<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Login - People of Bhilgaon</title>

  <!-- Favicons -->
  <link href="/resource/nh/assets/img/favicon.png" rel="icon">
  <link href="/resource/nh/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resource/nh/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="/resource/nh/assets/css/main.css" rel="stylesheet">

  <style>
    :root {
      --hdrH: 0px;
      --ftrH: 0px;
    }

    html, body { height: 100%; }
    body {
      min-height: 100dvh;
      display: flex;
      flex-direction: column;
      background: #f8f9fa;
    }

    /* Main takes full remaining height after header+footer */
    main.site-main {
      flex: 1 0 auto;
      min-height: calc(100dvh - var(--hdrH) - var(--ftrH));
      display: flex;
      align-items: center;     /* vertical center */
      justify-content: center; /* horizontal center */
      padding: 24px 16px;
    }

    footer.footer { margin-top: auto; }

    /* Optional hero if you re-enable it */
    section.hero { height: 25vh !important; overflow: hidden; }
    section.hero img.hero-img { width: 100%; height: 100%; object-fit: cover; }

    /* Login card */
    .login-box {
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0,0,0,0.08);
      width: 100%;
      max-width: 420px;
      padding: 28px;
    }
    .login-box h3 {
      text-align: center;
      margin-bottom: 20px;
      color: #056bc5;
      font-weight: 600;
    }
    .form-control {
      border-radius: 6px;
      padding: 10px 12px;
    }
    .btn-login {
      background: #056bc5;
      color: #fff;
      width: 100%;
      padding: 10px;
      border-radius: 6px;
      border: none;
      transition: 0.3s;
    }
    .btn-login:hover { background: #056bc5
; }
    .login-footer { text-align: center; margin-top: 14px; font-size: 14px; }
    .login-footer a { color: #056bc5; text-decoration: none; }
    .login-footer a:hover { text-decoration: underline; }
  </style>
</head>

<body class="index-page">

  <!-- ===== Header (same as site) ===== -->
  <header id="header" class="header sticky-top">
    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
          <i class="bi bi-envelope d-flex align-items-center">
            <a href="mailto:mybhilgaon@gmail.com">mybhilgaon@gmail.com</a>
          </i>
        </div>
        <div class="social-links d-none d-md-flex align-items-center">
          <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>
    </div>

    <div class="branding d-flex align-items-center">
      <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="/home" class="logo d-flex align-items-center me-auto">
          <h1 class="sitename">People Of Bhilgaon</h1>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul>
             <li><a href="#hero" class="active">Home<br></a></li>
            <li><a href="/register">Register</a></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/event">Events</a></li>
            <li><a href="#doctors">Photos</a></li>
            
            <li><a href="#contact">Contact</a></li>
          </ul>
          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>

        <a class="cta-btn d-none d-sm-block" href="/event">Upcoming Events</a>

      </div>
    </div>
  </header>

  <!-- Optional hero — keep commented if you want only the login -->
  <%--
  <section id="hero" class="hero section light-background">
    <img src="/resource/SocietyHome/images/ok.png" alt="" class="hero-img" data-aos="fade-in">
  </section>
  --%>

  <!-- ===== Main (perfect center) ===== -->
  <main class="site-main">
    <div class="login-box" data-aos="fade-up">
      <h3>Login to Your Account</h3>

      <!-- Messages -->
      <c:if test="${not empty param.error}">
        <div class="alert alert-danger py-2 mb-3"><c:out value="${param.error}"/></div>
      </c:if>
      <c:if test="${not empty param.msg}">
        <div class="alert alert-success py-2 mb-3"><c:out value="${param.msg}"/></div>
      </c:if>

      <!-- Form -->
      <form action="<c:url value='/login'/>" method="post">
        <div class="mb-3">
          <label for="email" class="form-label">Email address</label>
          <input
            type="email"
            id="email"
            name="email"
            class="form-control"
            value="<c:out value='${param.email}'/>"
            placeholder="<c:out value='Enter your email'/>"
            required>
        </div>

        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input
            type="password"
            id="password"
            name="password"
            class="form-control"
            placeholder="<c:out value='Enter your password'/>"
            required>
        </div>

        <button type="submit" class="btn-login"><c:out value="Login"/></button>
      </form>

      <div class="login-footer">
        <p>Don’t have an account? <a href="/register">Register</a></p>
      </div>
    </div>
  </main>

  <!-- ===== Footer (sticks to bottom) ===== -->
  <footer id="footer" class="footer light-background">
    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span>
        <strong class="px-1 sitename">People Of Bhilgaon - Aniket Verma</strong>
        <span>All Rights Reserved</span>
      </p>
      <div class="credits">
        Maintained By People Of Bhilgaon
      </div>
    </div>
  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <!-- Vendor JS Files -->
  <script src="/resource/nh/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resource/nh/assets/vendor/aos/aos.js"></script>
  <script src="/resource/nh/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resource/nh/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resource/nh/assets/js/main.js"></script>

  <!-- Measure header/footer and set CSS vars for perfect centering -->
  <script>
    function setHFHeights() {
      const hdr = document.getElementById('header');
      const ftr = document.getElementById('footer');
      const hdrH = hdr ? hdr.offsetHeight : 0;
      const ftrH = ftr ? ftr.offsetHeight : 0;
      document.documentElement.style.setProperty('--hdrH', hdrH + 'px');
      document.documentElement.style.setProperty('--ftrH', ftrH + 'px');
    }
    document.addEventListener('DOMContentLoaded', setHFHeights);
    window.addEventListener('load', setHFHeights);
    window.addEventListener('resize', setHFHeights);
  </script>

</body>
</html>
