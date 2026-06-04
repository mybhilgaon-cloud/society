<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Register - People of Bhilgaon</title>

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
    :root { --hdrH: 0px; --ftrH: 0px; }
    html, body { height: 100%; }
    body {
      min-height: 100dvh;
      display: flex; flex-direction: column;
      background: #f8f9fa;
    }
    main.site-main {
      flex: 1 0 auto;
      min-height: calc(100dvh - var(--hdrH) - var(--ftrH));
      display: flex; align-items: center; justify-content: center;
      padding: 24px 16px;
    }
    footer.footer { margin-top: auto; }

    .register-box {
      background: #fff; border-radius: 10px;
      box-shadow: 0 0 20px rgba(0,0,0,0.08);
      width: 100%; max-width: 460px; padding: 30px;
    }
    .register-box h3 { text-align: center; margin-bottom: 20px; color: #056bc5; font-weight: 600; }
    .form-control { border-radius: 6px; padding: 10px 12px; }
    .btn-register { background: #056bc5; color: #fff; width: 100%; padding: 10px; border-radius: 6px; border: none; transition: .3s; }
    .btn-register:hover { background: #5e1525; }
    .register-footer { text-align: center; margin-top: 15px; font-size: 14px; }
    .register-footer a { color: #056bc5; text-decoration: none; }
    .register-footer a:hover { text-decoration: underline; }
    .field-error { color: #dc3545; font-size: 0.9rem; margin-top: 6px; }

    /* Topbar and language select styles */
    .topbar {
      background: #f8f9fa; /* Light background for contrast */
      padding: 10px 0;
    }
    .lang-select {
      border: 1px solid #ccc;
      background: #fff;
      color: #0f1115; /* Dark text for visibility */
      font-weight: 600;
      padding: 4px 8px;
      border-radius: 4px;
    }
    @media (max-width: 767px) {
      .topbar { background: #056bc5; } /* Darker topbar for mobile */
      .lang-select { color: #fff; background: #5e1525; border: none; } /* White text on dark background */
    }
    /* Ensure header text is visible */
    .branding .logo h1, .navmenu a, .cta-btn {
      color: #1f58cb !important; /* Dark text for header */
    }
    @media (max-width: 767px) {
      .branding .logo h1, .navmenu a, .cta-btn {
        color: #fff !important; /* White text for mobile */
      }
    }
  </style>
</head>

<body class="index-page">

  <!-- ===== Header ===== -->
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

          <!-- Language selector -->
          <select id="langSelect" class="form-select form-select-sm ms-3 lang-select" aria-label="Language select">
            <option value="en">English</option>
            <option value="hi">हिन्दी</option>
            <option value="mr">मराठी</option>
          </select>
        </div>
      </div>
    </div>

    <div class="branding d-flex align-items-center">
      <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="/home" class="logo d-flex align-items-center me-auto">
          <h1 class="sitename" data-i18n="siteName">People Of Bhilgaon</h1>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul>
            <li><a href="#hero" class="active" data-i18n="navHome">Home</a></li>
            <li><a href="/register" data-i18n="navRegister">Register</a></li>
            <li><a href="/login" data-i18n="navLogin">Login</a></li>
            <li><a href="/event" data-i18n="navEvents">Events</a></li>
            <li><a href="#doctors" data-i18n="navPhotos">Photos</a></li>
            <li><a href="#contact" data-i18n="navContact">Contact</a></li>
          </ul>
          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>

        <a class="cta-btn d-none d-sm-block" href="/home" data-i18n="navUpcoming">Upcoming Events</a>
      </div>
    </div>
  </header>

  <!-- ===== Main (Centered Register Form) ===== -->
  <main class="site-main">
  <div class="register-box" data-aos="fade-up">

    <h3 data-i18n="registerTitle">
      Register For Participation
    </h3>

    <!-- Success Message -->
    <c:if test="${not empty success}">
      <div class="alert alert-success alert-dismissible fade show mb-3"
           role="alert">

        <i class="bi bi-check-circle-fill"></i>
        ${success}

        <button type="button"
                class="btn-close"
                data-bs-dismiss="alert">
        </button>

      </div>
    </c:if>

    <!-- Registration Error -->
    <form:errors cssClass="alert alert-danger d-block mb-3"/>

    <!-- Existing Query Param Messages -->
    <c:if test="${not empty param.error}">
      <div class="alert alert-danger py-2 mb-3">
        <c:out value="${param.error}"/>
      </div>
    </c:if>

    <c:if test="${not empty param.msg}">
      <div class="alert alert-success py-2 mb-3">
        <c:out value="${param.msg}"/>
      </div>
    </c:if>

  
 <c:if test="${ empty success}">
      <!-- Spring Form -->
      <form:form action="${pageContext.request.contextPath}/register" method="post" modelAttribute="registerForm">
        <div class="mb-3">
          <label for="fullname" class="form-label" data-i18n="formFullname">Full Name</label>
          <form:input path="fullname" id="fullname" cssClass="form-control" data-i18n-placeholder="formFullnamePlaceholder" placeholder="Enter your full name" required="required"/>
          <form:errors path="fullname" cssClass="field-error"/>
        </div>

        <div class="mb-3">
          <label for="mobile" class="form-label" data-i18n="formMobile">Mobile Number</label>
          <form:input path="mobile" id="mobile" cssClass="form-control" data-i18n-placeholder="formMobilePlaceholder" placeholder="Enter your mobile number" maxlength="10" pattern="[0-9]{10}" required="required"/>
          <form:errors path="mobile" cssClass="field-error"/>
        </div>
  
        <div class="mb-3">
          <label for="email" class="form-label" data-i18n="formEmail">Email address</label>
          <form:input path="email" id="email" type="email" cssClass="form-control" data-i18n-placeholder="formEmailPlaceholder" placeholder="Enter your email" required="required"/>
          <form:errors path="email" cssClass="field-error"/>
        </div>

        <div class="mb-3">
          <label for="password" class="form-label" data-i18n="formPassword">Password</label>
          <form:password path="password" id="password" cssClass="form-control" data-i18n-placeholder="formPasswordPlaceholder" placeholder="Create a password" required="required"/>
          <form:errors path="password" cssClass="field-error"/>
        </div>

        <button type="submit" class="btn-register" data-i18n="formSubmit">Register</button>
      </form:form>
      </c:if>
<c:if test="${ empty success}">
      <div class="register-footer">
        <p data-i18n="formAlreadyAccount">Already have an account? <a href="${pageContext.request.contextPath}/login" data-i18n="formLoginLink">Login</a></p>
      </div>
      </c:if>
    </div>
  </main>

  <!-- ===== Footer ===== -->
  <footer id="footer" class="footer light-background">
    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span>
        <strong class="px-1 sitename" data-i18n="siteNameFooter">People Of Bhilgaon - Aniket Verma</strong>
        <span data-i18n="rights">All Rights Reserved</span>
      </p>
      <div class="credits" data-i18n="credits">Maintained By People Of Bhilgaon</div>
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

  <!-- Measure header/footer for perfect centering -->
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

  <!-- Language switch script -->
  <script>
    (function(){
      const translations = {
        en: {
          siteName: "People Of Bhilgaon",
          siteNameFooter: "People Of Bhilgaon - Aniket Verma",
          navHome: "Home",
          navRegister: "Register",
          navLogin: "Login",
          navEvents: "Events",
          navPhotos: "Photos",
          navContact: "Contact",
          navUpcoming: "Upcoming Events",
          rights: "All Rights Reserved",
          credits: "Maintained By People Of Bhilgaon",
          registerTitle: "Register For Participation",
          formFullname: "Full Name",
          formFullnamePlaceholder: "Enter your full name",
          formMobile: "Mobile Number",
          formMobilePlaceholder: "Enter your mobile number",
          formEmail: "Email address",
          formEmailPlaceholder: "Enter your email",
          formPassword: "Password",
          formPasswordPlaceholder: "Create a password",
          formSubmit: "Register",
          formAlreadyAccount: "Already have an account?",
          formLoginLink: "Login"
        },
        hi: {
          siteName: "पीपल ऑफ भिलगांव",
          siteNameFooter: "पीपल ऑफ भिलगांव - अनिकेत वर्मा",
          navHome: "होम",
          navRegister: "रजिस्टर",
          navLogin: "लॉगिन",
          navEvents: "कार्यक्रम",
          navPhotos: "फ़ोटो",
          navContact: "संपर्क",
          navUpcoming: "आगामी कार्यक्रम",
          rights: "सभी अधिकार सुरक्षित",
          credits: "पीपल ऑफ भिलगांव द्वारा संचालित",
          registerTitle: "भागीदारी के लिए रजिस्टर करें",
          formFullname: "पूरा नाम",
          formFullnamePlaceholder: "अपना पूरा नाम दर्ज करें",
          formMobile: "मोबाइल नंबर",
          formMobilePlaceholder: "अपना मोबाइल नंबर दर्ज करें",
          formEmail: "ईमेल पता",
          formEmailPlaceholder: "अपना ईमेल दर्ज करें",
          formPassword: "पासवर्ड",
          formPasswordPlaceholder: "पासवर्ड बनाएं",
          formSubmit: "रजिस्टर",
          formAlreadyAccount: "पहले से खाता है?",
          formLoginLink: "लॉगिन"
        },
        mr: {
          siteName: "पीपल ऑफ भिलगाव",
          siteNameFooter: "पीपल ऑफ भिलगाव - अनिकेत वर्मा",
          navHome: "मुख्यपृष्ठ",
          navRegister: "नोंदणी",
          navLogin: "लॉगिन",
          navEvents: "कार्यक्रम",
          navPhotos: "छायाचित्रे",
          navContact: "संपर्क",
          navUpcoming: "आगामी कार्यक्रम",
          rights: "सर्व हक्क राखीव",
          credits: "पीपल ऑफ भिलगावद्वारे व्यवस्थापित",
          registerTitle: "सहभागासाठी नोंदणी करा",
          formFullname: "पूर्ण नाव",
          formFullnamePlaceholder: "आपले पूर्ण नाव प्रविष्ट करा",
          formMobile: "मोबाइल क्रमांक",
          formMobilePlaceholder: "आपला मोबाइल क्रमांक प्रविष्ट करा",
          formEmail: "ईमेल पत्ता",
          formEmailPlaceholder: "आपला ईमेल प्रविष्ट करा",
          formPassword: "पासवर्ड",
          formPasswordPlaceholder: "पासवर्ड तयार करा",
          formSubmit: "नोंदणी",
          formAlreadyAccount: "आधीपासून खाते आहे?",
          formLoginLink: "लॉगिन"
        }
      };

      const apply = (lang) => {
        const dict = translations[lang] || translations.en;
        // Update elements with data-i18n attribute
        document.querySelectorAll("[data-i18n]").forEach(el => {
          const key = el.getAttribute("data-i18n");
          if (key && dict[key] !== undefined) {
            el.textContent = dict[key];
          }
        });
        // Update placeholders with data-i18n-placeholder attribute
        document.querySelectorAll("[data-i18n-placeholder]").forEach(el => {
          const key = el.getAttribute("data-i18n-placeholder");
          if (key && dict[key] !== undefined) {
            el.placeholder = dict[key];
          }
        });
        // Persist choice
        try { localStorage.setItem("bh_lang", lang); } catch(e) {}
        // Set html lang
        document.documentElement.setAttribute("lang", lang === "en" ? "en" : lang);
      };

      // Init from saved or default
      const sel = document.getElementById("langSelect");
      const saved = (localStorage.getItem("bh_lang") || "en");
      if (sel) {
        sel.value = saved;
        sel.addEventListener("change", (e) => apply(e.target.value));
      }
      apply(saved);
    })();
  </script>

</body>
</html>