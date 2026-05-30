<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>Yoga Sangam 2026 | International Yoga Day</title>

  <!-- Favicons -->
  <link href="/resource/nh/assets/img/favicon.png" rel="icon" />

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

  <!-- Vendor CSS -->
  <link href="/resource/nh/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/aos/aos.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />

  <style>
    :root {
      --primary-blue: #0d6efd;
      --dark-blue: #0b5ed7;
      --light-blue: #e0f0ff;
      --ink: #0f1115;
    }

    body {
      font-family: Inter, system-ui, sans-serif;
      color: var(--ink);
      background: #f8fbff;
      line-height: 1.7;
    }

    .sitename { 
      font-family: Poppins, sans-serif; 
      font-weight: 800; 
      letter-spacing: 0.5px; 
      color: var(--primary-blue);
    }

    .header.sticky-top {
      box-shadow: 0 4px 15px rgba(0,0,0,0.08);
      z-index: 1030;
    }

    .hero-wrap {
      position: relative;
      min-height: 72vh;
      display: grid;
      place-items: center;
      background: url("/resource/SocietyHome/images/bgg11.png") center/cover no-repeat;
      isolation: isolate;
    }

   .hero-card {
    background: rgba(13, 110, 253, 0.35);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);

    border: 1px solid rgba(255,255,255,0.25);
    border-radius: 20px;

    box-shadow: 0 15px 40px rgba(0,0,0,0.18);

    padding: 25px 20px;      /* reduced from 45px 35px */
    max-width: 550px;        /* reduced from 1100px */
    width: 85%;
    margin: auto;

    color: #fff;
}

.hero-card h1,
.hero-card h2,
.hero-card p,
.hero-card .eyebrow {
    color: #ffffff !important;
}

.hero-card .eyebrow {
    letter-spacing: 2px;
    font-weight: 700;
    opacity: 0.95;
}

.hero-card .display-4 {
    font-size: 2.5rem !important;
    line-height: 1.2;
}

.hero-card .fs-2 {
    font-size: 1.4rem !important;
}

.hero-card .lead {
    font-size: 1rem;
    margin-bottom: 1.5rem !important;
}

.hero-card .btn-brand {
    padding: 12px 28px;
}

    .section-pad { padding: 90px 0; }
    .eyebrow { 
      font-weight: 700; 
      color: var(--primary-blue); 
      letter-spacing: 2px; 
      text-transform: uppercase; 
      font-size: 0.95rem;
    }

    .feature-card {
      background: white;
      border-radius: 18px;
      padding: 28px;
      height: 100%;
      transition: all 0.4s ease;
    }
    .feature-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 20px 50px rgba(13,110,253,0.15);
    }

    .btn-brand {
      background: var(--primary-blue);
      color: white;
      border-radius: 50px;
      padding: 14px 32px;
      font-weight: 700;
      transition: all 0.3s ease;
    }
    .btn-brand:hover {
      background: var(--dark-blue);
      transform: translateY(-2px);
    }

    .gallery-item {
      overflow: hidden;
      border-radius: 16px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.08);
    }
    .gallery-item img {
      transition: transform 0.4s ease;
    }
    .gallery-item:hover img {
      transform: scale(1.08);
    }
    
    
    
    
    
    /* =========================
   MOBILE RESPONSIVE
========================= */

.navbar-toggler {
    padding: 4px 8px;
}

.navbar-collapse {
    background: #fff;
    border-radius: 12px;
    margin-top: 10px;
}

.navbar-nav .nav-link {
    padding: 12px 15px;
    font-weight: 600;
}

@media (max-width: 991px) {

    .topbar .container {
        flex-direction: column;
        gap: 10px;
        text-align: center;
    }

    .branding .container {
        flex-wrap: wrap;
    }

    .hero-wrap {
        min-height: 60vh;
        padding: 25px 15px;
    }

    .hero-card {
        width: 95%;
        padding: 20px 15px;
    }

    .hero-card .display-4 {
        font-size: 1.8rem !important;
    }

    .hero-card .fs-2 {
        font-size: 1.15rem !important;
    }

    .hero-card .lead {
        font-size: 0.95rem;
    }

    .section-pad {
        padding: 60px 0;
    }

    .sitename {
        font-size: 1.4rem !important;
    }
}

@media (max-width: 576px) {

    .hero-card {
        width: 100%;
    }

    .hero-card .display-4 {
        font-size: 1.5rem !important;
    }

    .hero-card .fs-2 {
        font-size: 1rem !important;
    }

    .btn-brand {
        width: 100%;
    }

    .contact-info {
        flex-direction: column;
        gap: 5px !important;
    }
}
  </style>
</head>

<body class="index-page">

  <!-- Sticky Header -->
  <header id="header" class="header sticky-top bg-white">
    <div class="topbar d-flex align-items-center" style="background:#f0f4ff;">
      <div class="container d-flex justify-content-center justify-content-md-between py-2">
        <div class="contact-info d-flex align-items-center gap-3">
          <i class="bi bi-envelope"></i>
          <a href="mailto:mybhilgaon@gmail.com" class="text-decoration-none">mybhilgaon@gmail.com</a>
        </div>
        <div class="d-flex align-items-center gap-2">
          <span class="small opacity-75" data-i18n="langLabel">Language</span>
          <select id="lang" class="form-select form-select-sm lang-switch">
            <option value="en" selected>English</option>
            <option value="hi">हिन्दी</option>
            <option value="mr">मराठी</option>
          </select>
        </div>
      </div>
    </div>

    <div class="branding py-3">
      <div class="container d-flex align-items-center justify-content-between">
        <a href="/home" class="logo text-decoration-none">
          <h1 class="sitename fs-3 mb-0" data-i18n="siteName">People of Bhilgaon</h1>
        </a>

      <nav class="navbar navbar-expand-lg navbar-light p-0">
    <button class="navbar-toggler border-0 shadow-none"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#mobileNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="mobileNav">
        <ul class="navbar-nav ms-auto align-items-lg-center">
            <li class="nav-item">
                <a class="nav-link" href="/home" data-i18n="navHome">Home</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/register" data-i18n="navRegister">Register</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#gallery" data-i18n="navPhotos">Photos</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#contact" data-i18n="navContact">Contact</a>
            </li>

          <!--   <li class="nav-item mt-3 mt-lg-0 ms-lg-3">
                <a href="/register"
                   class="btn btn-brand"
                   data-i18n="ctaRegister">
                    Join Yoga Sangam
                </a>
            </li> -->
        </ul>
    </div>
</nav>

        <a href="/register" class="btn btn-brand d-none d-md-inline" data-i18n="ctaRegister">Join Yoga Sangam</a>
      </div>
    </div>
  </header>

  <!-- Hero -->
  <section id="hero" class="hero-wrap">
    <div class="hero-card text-center" data-aos="fade-up">
      <div class="eyebrow mb-3" data-i18n="eyebrow">21 June 2026 • Bhilgaon</div>
      <h1 class="display-4 fw-bold mb-3" data-i18n="headline">Yoga Sangam 2026</h1>
      <h2 class="fs-2 text-primary mb-4" data-i18n="subHeadline">One Earth • One Health • One Yoga</h2>
      <p class="lead mb-4" data-i18n="heroDesc">Join the global celebration of yoga for physical vitality, mental peace, and spiritual harmony.</p>
      <a href="/register" class="btn btn-brand btn-lg" data-i18n="btnJoin">Register for Yoga Sangam</a>
    </div>
  </section>

  <!-- About -->
  <section id="about" class="section-pad bg-white">
    <div class="container">
      <div class="row align-items-center gy-5">
         <div class="col-lg-6" data-aos="fade-up" data-aos-delay="50">
            <img src="/resource/SocietyHome/images/p3.JPG" class="img-fluid rounded-4 border" alt="Community" />
          </div>
        <div class="col-lg-6" data-aos="fade-left">
          <div class="eyebrow mb-3" data-i18n="aboutEyebrow">Global Movement</div>
          <h2 class="fw-bold mb-4" data-i18n="aboutTitle">Yoga for Wellness, Wisdom & World Peace</h2>
          <p class="lead mb-4" data-i18n="aboutBody">Proposed by Prime Minister Narendra Modi at the United Nations in 2014 and unanimously adopted by 177 countries, International Yoga Day is celebrated every year on 21st June across the world.</p>
          <p data-i18n="aboutBody2">In 2026, Bhilgaon proudly hosts **Yoga Sangam** — a beautiful community gathering to experience the ancient science of yoga for holistic well-being.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Gallery -->
  <section id="gallery" class="gallery section-pad pt-0 bg-white">
    <div class="container">
      <div class="text-center mb-5" data-aos="fade-up">
        <div class="eyebrow" data-i18n="galleryEyebrow">Gallery</div>
        <h2 class="fw-bold" data-i18n="galleryTitle">Moments from Yoga Sangam</h2>
      </div>

      <div class="text-center mb-4">
        <button id="toggleGalleryBtn" class="btn btn-brand" type="button" data-bs-toggle="collapse"
                data-bs-target="#galleryCollapse" data-i18n="galleryToggle">
          View Photos
        </button>
      </div>

      <div class="collapse" id="galleryCollapse">
        <div class="row g-3" id="galleryContainer"></div>
      </div>
    </div>
  </section>

  <!-- Contact CTA -->
  <section id="contact" class="section-pad text-center" style="background: linear-gradient(135deg, #0d6efd, #0b5ed7); color: white;">
    <div class="container">
      <h2 class="mb-3" data-i18n="contactTitle">Ready to Join the Movement?</h2>
      <p class="lead mb-4" data-i18n="contactBody">Register now and be part of this grand celebration of health and harmony at Bhilgaon</p>
      <a href="/register" class="btn btn-light btn-lg" data-i18n="contactBtn">Register Free Now</a>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer py-5 bg-white border-top">
    <div class="container text-center">
      <p class="mb-1">© 2026 <strong class="sitename" data-i18n="siteNameFooter">Yoga Sangam - Bhilgaon</strong></p>
    </div>
  </footer>

  <!-- Scripts -->
  <script src="/resource/nh/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resource/nh/assets/vendor/aos/aos.js"></script>
  <script src="/resource/nh/assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Gallery Script -->
  <script>
    (function(){
      const galleryImages = [
        "bm1.JPG", "p1.JPG", "p2.JPG", "p3.JPG",
        "p4.JPG", "p5.JPG", "p6.JPG", "p7.JPG"
      ];
      const galleryCollapse = document.getElementById("galleryCollapse");
      const galleryContainer = document.getElementById("galleryContainer");
      let galleryLoaded = false;

      if (galleryCollapse) {
        galleryCollapse.addEventListener("shown.bs.collapse", function () {
          if (galleryLoaded) return;

          galleryImages.forEach(name => {
            const col = document.createElement("div");
            col.className = "col-6 col-md-4 col-lg-3";
            col.innerHTML = [
              '<div class="gallery-item">',
                '<a href="/resource/SocietyHome/images/' + name + '" class="glightbox" data-gallery="images-gallery">',
                  '<img src="/resource/SocietyHome/images/' + name + '" class="img-fluid" loading="lazy" alt="">',
                '</a>',
              '</div>'
            ].join("");
            galleryContainer.appendChild(col);
          });

          try {
            GLightbox({ selector: '.glightbox' });
          } catch(e) {
            console.warn("GLightbox init error", e);
          }

          galleryLoaded = true;
        });
      }
    })();
  </script>

  <!-- Full Language Translations -->
  <script>
    const I18N = {
      en: {
        siteName: "Yoga Sangam 2026",
        siteNameFooter: "Yoga Sangam 2026 - Bhilgaon",
        langLabel: "Language",
        navHome: "Home",
        navRegister: "Register",
        navPhotos: "Photos",
        navContact: "Contact",
        ctaRegister: "Join Yoga Sangam",
        eyebrow: "21 June 2026 • Bhilgaon",
        headline: "International Yoga Day 2026",
        subHeadline: "Yoga Sangam – One Earth • One Health • One Yoga",
        heroDesc: "Join the global celebration of yoga for physical vitality, mental peace, and spiritual harmony.",
        btnJoin: "Register for Yoga Sangam",
        aboutEyebrow: "Global Movement",
        aboutTitle: "Yoga for Wellness, Wisdom & World Peace",
        aboutBody: "Proposed by Prime Minister Narendra Modi at the United Nations in 2014 and unanimously adopted by 177 countries, International Yoga Day is celebrated every year on 21st June across the world.",
        aboutBody2: "In 2026, Bhilgaon proudly hosts Yoga Sangam — a beautiful community gathering to experience the ancient science of yoga for holistic well-being.",
        galleryEyebrow: "Gallery",
        galleryTitle: "Moments from Yoga Sangam",
        galleryToggle: "View Photos",
        contactTitle: "Ready to Join the Movement?",
        contactBody: "Register now and be part of this grand celebration of health and harmony at Bhilgaon",
        contactBtn: "Register Free Now"
      },
      hi: {
        siteName: "योग संगम 2026",
        siteNameFooter: "योग संगम 2026 - भिलगांव",
        langLabel: "भाषा",
        navHome: "होम",
        navRegister: "रजिस्टर",
        navPhotos: "फोटो",
        navContact: "संपर्क",
        ctaRegister: "योग संगम में शामिल हों",
        eyebrow: "21 जून 2026 • भिलगांव",
        headline: "अंतर्राष्ट्रीय योग दिवस 2026",
        subHeadline: "योग संगम – एक पृथ्वी • एक स्वास्थ्य • एक योग",
        heroDesc: "शारीरिक ऊर्जा, मानसिक शांति और आध्यात्मिक सद्भाव के लिए योग का वैश्विक उत्सव मनाएं।",
        btnJoin: "योग संगम के लिए रजिस्टर करें",
        aboutEyebrow: "वैश्विक आंदोलन",
        aboutTitle: "स्वास्थ्य, ज्ञान और विश्व शांति के लिए योग",
        aboutBody: "प्रधानमंत्री नरेंद्र मोदी द्वारा 2014 में संयुक्त राष्ट्र में प्रस्तावित और 177 देशों द्वारा सर्वसम्मति से अपनाया गया अंतर्राष्ट्रीय योग दिवस हर साल 21 जून को दुनिया भर में मनाया जाता है।",
        aboutBody2: "2026 में भिलगांव गर्व के साथ योग संगम का आयोजन कर रहा है — योग की प्राचीन विद्या का अनुभव करने के लिए एक सुंदर सामुदायिक समागम।",
        galleryEyebrow: "गैलरी",
        galleryTitle: "योग संगम के क्षण",
        galleryToggle: "फोटो देखें",
        contactTitle: "आंदोलन में शामिल होने के लिए तैयार हैं?",
        contactBody: "अभी रजिस्टर करें और भिलगांव में स्वास्थ्य व सद्भाव के इस भव्य उत्सव का हिस्सा बनें",
        contactBtn: "मुफ्त रजिस्टर करें"
      },
      mr: {
        siteName: "योग संगम 2026",
        siteNameFooter: "योग संगम 2026 - भिलगाव",
        langLabel: "भाषा",
        navHome: "मुख्यपृष्ठ",
        navRegister: "नोंदणी",
        navPhotos: "छायाचित्र",
        navContact: "संपर्क",
        ctaRegister: "योग संगममध्ये सामील व्हा",
        eyebrow: "२१ जून २०२६ • भिलगाव",
        headline: "आंतरराष्ट्रीय योग दिन २०२६",
        subHeadline: "योग संगम – एक पृथ्वी • एक आरोग्य • एक योग",
        heroDesc: "शारीरिक ऊर्जा, मानसिक शांती आणि आध्यात्मिक सद्भावासाठी योगाचा जागतिक उत्सव.",
        btnJoin: "योग संगमसाठी नोंदणी करा",
        aboutEyebrow: "जागतिक चळवळ",
        aboutTitle: "आरोग्य, ज्ञान आणि विश्व शांतीसाठी योग",
        aboutBody: "प्रधानमंत्री नरेंद्र मोदी यांनी २०१४ मध्ये संयुक्त राष्ट्रात प्रस्तावित केलेला आणि १७७ देशांनी एकमताने स्वीकारलेला आंतरराष्ट्रीय योग दिन दरवर्षी २१ जूनला जगभर साजरा केला जातो.",
        aboutBody2: "२०२६ मध्ये भिलगाव अभिमानाने योग संगमचे आयोजन करत आहे — योगाच्या प्राचीन विज्ञानाचा अनुभव घेण्यासाठी एक सुंदर सामुदायिक कार्यक्रम.",
        galleryEyebrow: "गॅलरी",
        galleryTitle: "योग संगमचे क्षण",
        galleryToggle: "फोटो पहा",
        contactTitle: "चळवळीत सामील होण्यास तयार आहात?",
        contactBody: "आता नोंदणी करा आणि भिलगावमध्ये आरोग्य व सद्भावाच्या या भव्य उत्सवाचा भाग व्हा",
        contactBtn: "मोफत नोंदणी करा"
      }
    };

    function applyLang(lang) {
      const dict = I18N[lang] || I18N.en;
      document.querySelectorAll("[data-i18n]").forEach(el => {
        const key = el.getAttribute("data-i18n");
        if (dict[key]) el.textContent = dict[key];
      });
      localStorage.setItem("bh_lang", lang);
      document.documentElement.setAttribute("lang", lang);
    }

    (function initLang() {
      const saved = localStorage.getItem("bh_lang") || "en";
      const select = document.getElementById("lang");
      if (select) {
        select.value = saved;
        select.addEventListener("change", e => applyLang(e.target.value));
      }
      applyLang(saved);
    })();

    AOS.init({ once: true, duration: 800 });
  </script>
</body>
</html>