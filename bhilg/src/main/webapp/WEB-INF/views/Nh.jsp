<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <title>People of Bhilgaon</title>

  <!-- Favicons -->
  <link href="/resource/nh/assets/img/favicon.png" rel="icon" />
  <link href="/resource/nh/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect" />
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

  <!-- Vendor CSS -->
  <link href="/resource/nh/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/aos/aos.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
  <link href="/resource/nh/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

  <!-- Theme CSS -->
  <link href="/resource/nh/assets/css/main.css" rel="stylesheet" />

  <style>
    :root {
      --brand: #871F35;
      --brand-700: #6b182b;
      --ink: #0f1115;
      --muted: #6b7280;
      --card: #ffffff;
      --hair: #e9ecef;
    }
    html, body { height: 100%; }
    body {
      font-family: Inter, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
      color: var(--ink);
      background: #fbfbfc;
    }
    .sitename { font-family: Poppins, Inter, system-ui, sans-serif; font-weight: 800; letter-spacing: .3px; }

    /* Header */
    .topbar { background: #f8f9fa; color: var(--ink); font-size: .9rem; }
    .topbar a { color: var(--ink); opacity: .9; text-decoration: none; }
    .topbar a:hover { opacity: 1; }
    .branding { background: #fff; border-bottom: 1px solid var(--hair); }
    .navmenu a { font-weight: 600; }

    /* Small spacing tweak for header items */
    .navmenu ul.nav li { margin-right: 0.6rem; }
    .navmenu ul.nav li:last-child { margin-right: 1rem; }

    /* Language switcher */
    .lang-switch {
      min-width: 100px;
      border: 1px solid #ccc;
      border-radius: 4px;
      background: #fff;
      color: var(--ink);
      font-weight: 600;
      padding: 4px 8px;
    }
    @media (max-width: 767px) {
      .topbar { background: #0f1115; color: #fff; }
      .topbar a { color: #fff; }
      .lang-switch { background: #fff; color: var(--ink); border: none; }
    }

    /* HERO (image + glass card) */
    .hero-wrap {
      position: relative;
      min-height: 72vh;
      display: grid;
      place-items: center;
      background: url("/resource/SocietyHome/images/ok.png") center/cover no-repeat;
      isolation: isolate;
    }
    .hero-wrap::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(180deg, rgba(0,0,0,.3), rgba(0,0,0,.55));
      z-index: 0;
    }
    .hero-card {
      z-index: 1;
      background: rgba(12,14,16,.45);
      color: #fff;
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border: 1px solid rgba(255,255,255,.18);
      border-radius: 18px;
      box-shadow: 0 16px 40px rgba(0,0,0,.28);
      max-width: 1080px;
      width: 92vw;
      padding: 28px;
    }
    @media (min-width: 992px) { .hero-card { padding: 48px 56px; } }
    .headline { font-family: Poppins, Inter, system-ui; font-weight: 800; letter-spacing: .2px; color: #fff; margin-bottom: 10px; }
    .sub { color: #ecedf3; opacity: .95; font-size: 1.05rem; }
    .btn-brand { background: var(--brand); color: #fff; border: none; border-radius: 999px; padding: .75rem 1.25rem; font-weight: 700; }
    .btn-brand:hover { background: var(--brand-700); color: #fff; }
    .btn-ghost { border: 1px solid #fff; color: #fff; background: transparent; border-radius: 999px; padding: .75rem 1.25rem; font-weight: 700; }
    .btn-ghost:hover { background: #fff; color: #000; }
    .kpi {
      background: rgba(255,255,255,.10);
      border: 1px solid rgba(255,255,255,.2);
      color: #fff;
      border-radius: 14px;
      padding: 14px 16px;
      min-width: 160px;
      text-align: center;
    }
    .kpi .num { font-weight: 800; font-size: 1.5rem; }
    .kpi .lbl { opacity: .95; font-weight: 600; font-size: .9rem; }

    /* Feature/Intro section */
    .section-pad { padding: 68px 0; }
    .eyebrow { font-weight: 800; color: var(--brand); letter-spacing: .6px; text-transform: uppercase; font-size: .85rem; }
    .lead { color: #3b3f46; }
    .feature-card {
      background: var(--card);
      border: 1px solid var(--hair);
      border-radius: 16px;
      padding: 22px;
      height: 100%;
      transition: transform .25s ease, box-shadow .25s ease, border-color .25s ease;
    }
    .feature-card:hover { transform: translateY(-2px); box-shadow: 0 16px 38px rgba(17,20,24,.07); border-color: #e2e8f0; }
    .feature-icon {
      display: inline-grid;
      place-items: center;
      width: 48px;
      height: 48px;
      border-radius: 12px;
      background: rgba(135,31,53,.1);
      color: var(--brand);
      font-size: 22px;
      margin-bottom: 10px;
    }

    /* Gallery */
    .gallery .gallery-item { overflow: hidden; border-radius: 14px; border: 1px solid var(--hair); }
    .gallery .gallery-item img { transition: transform .35s ease; }
    .gallery .gallery-item:hover img { transform: scale(1.05); }

    /* Collapse button style */
    #toggleGalleryBtn {
      background: var(--brand);
      color: #fff;
      border: none;
      border-radius: 999px;
      padding: .75rem 1.25rem;
      font-weight: 700;
      transition: all .3s ease;
    }
    #toggleGalleryBtn:hover {
      background: var(--brand-700);
      transform: translateY(-2px);
    }

    /* Footer */
    .footer { border-top: 1px solid var(--hair); background: #fff; }
  </style>
</head>

<body class="index-page">

  <!-- ===== Header ===== -->
  <header id="header" class="header sticky-top">
    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between py-1">
        <div class="contact-info d-flex align-items-center gap-3">
          <i class="bi bi-envelope d-flex align-items-center">
            <a href="mailto:mybhilgaon@gmail.com" class="ms-1">mybhilgaon@gmail.com</a>
          </i>
        </div>

        <!-- Language Switcher (visible on all screens) -->
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

    <div class="branding d-flex align-items-center">
      <div class="container position-relative d-flex align-items-center justify-content-between py-2">
        <a href="/home" class="logo d-flex align-items-center me-auto text-decoration-none">
          <h1 class="sitename mb-0 fs-3" data-i18n="siteName">People Of Bhilgaon</h1>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul class="nav gap-3">
            <li class="nav-item"><a href="/home" class="nav-link fw-semibold active" data-i18n="navHome">Home</a></li>
            <li class="nav-item"><a href="/register" class="nav-link fw-semibold" data-i18n="navRegister">Register</a></li>
            <li class="nav-item"><a href="/login" class="nav-link fw-semibold" data-i18n="navLogin">Login</a></li>
            <li class="nav-item"><a href="/event" class="nav-link fw-semibold" data-i18n="navEvents">Events</a></li>
            <li class="nav-item"><a href="#gallery" class="nav-link fw-semibold" data-i18n="navPhotos">Photos</a></li>
            <li class="nav-item"><a href="#contact" class="nav-link fw-semibold" data-i18n="navContact">Contact</a></li>
          </ul>
        </nav>

        <a class="btn btn-brand d-none d-sm-inline-flex" href="/event" data-i18n="ctaUpcoming">Upcoming Events</a>
      </div>
    </div>
  </header>

  <!-- ===== Main ===== -->
  <main class="main">

    <!-- ===== Hero (Banner) ===== -->
    <section id="hero" class="hero-wrap">
      <div class="hero-card" data-aos="fade-up" data-aos-delay="50">
        <div class="row g-4 align-items-center">
          <div class="col-lg-8">
            <div class="eyebrow mb-2" data-i18n="eyebrow">Community • Faith • Heritage</div>
            <h1 class="headline display-5 mb-2" data-i18n="headline">Uniting Bhilgaon With Devotion</h1>
            <p class="sub mb-3" data-i18n="sub">
              We’re hosting the divine Shree Ram Katha and attempting a record by writing “Ram” 108,000 times — spreading peace and devotion.
            </p>
            <div class="d-flex gap-2 flex-wrap">
              <a href="/register" class="btn btn-brand" data-i18n="btnJoin">Join the Initiative</a>
              <a href="#gallery" class="btn btn-ghost" data-i18n="btnMemories">View Memories</a>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="d-flex flex-wrap gap-2 justify-content-lg-end">
              <div class="kpi">
                <div class="num" data-i18n="kpi1Num">200+</div>
                <div class="lbl" data-i18n="kpi1Lbl">Participants</div>
              </div>
              <div class="kpi">
                <div class="num" data-i18n="kpi2Num">108k</div>
                <div class="lbl" data-i18n="kpi2Lbl">“Ram” Target</div>
              </div>
              <div class="kpi">
                <div class="num" data-i18n="kpi3Num">Nov ’25</div>
                <div class="lbl" data-i18n="kpi3Lbl">Event Month</div>
              </div>
            </div>
          </div>
        </div>
      </div><!-- /.hero-card -->
    </section>
    <!-- /Hero -->

    <!-- ===== About / Features ===== -->
    <section id="about" class="section-pad">
      <div class="container">
        <div class="row align-items-center gy-4 gx-lg-5">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="50">
            <img src="/resource/SocietyHome/images/f1.jpg" class="img-fluid rounded-4 border" alt="Community" />
          </div>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <div class="eyebrow" data-i18n="aboutEyebrow">About Us</div>
            <h2 class="fw-extrabold mb-2" data-i18n="aboutTitle">Rooted in Devotion, United in Progress</h2>
            <p class="lead mb-3" data-i18n="aboutBody">
              We are a vibrant community celebrating our cultural heritage while embracing growth. This November we will host Shree Ram Katha and write “Ram” 108,000 times together.
            </p>

            <div class="row g-3 mt-2">
              <div class="col-md-4">
                <div class="feature-card h-100">
                  <div class="feature-icon"><i class="bi bi-people"></i></div>
                  <h6 class="mb-1" data-i18n="v1Title">Community First</h6>
                  <p class="text-muted small mb-0" data-i18n="v1Body">Inclusive, volunteer-driven programs.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="feature-card h-100">
                  <div class="feature-icon"><i class="bi bi-book"></i></div>
                  <h6 class="mb-1" data-i18n="v2Title">Culture Alive</h6>
                  <p class="text-muted small mb-0" data-i18n="v2Body">Celebrations & learning for all ages.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="feature-card h-100">
                  <div class="feature-icon"><i class="bi bi-heart-pulse"></i></div>
                  <h6 class="mb-1" data-i18n="v3Title">Giving Back</h6>
                  <p class="text-muted small mb-0" data-i18n="v3Body">Service (seva) and outreach.</p>
                </div>
              </div>
            </div>

            <div class="mt-3">
              <a href="/event" class="btn btn-brand" data-i18n="aboutCta">See Upcoming Events</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== Gallery (collapsible, lazy) ===== -->
    <section id="gallery" class="gallery section-pad pt-0">
      <div class="container">
        <div class="text-center mb-4" data-aos="fade-up">
          <div class="eyebrow" data-i18n="galleryEyebrow">Gallery</div>
          <h2 class="fw-extrabold" data-i18n="galleryTitle">Moments from Yoga Sangam 2025</h2>
          <p class="text-muted" data-i18n="galleryTag">A glimpse of our community spirit.</p>
        </div>

        <div class="text-center" data-aos="fade-up" data-aos-delay="30">
          <button id="toggleGalleryBtn" class="btn mb-4" type="button" data-bs-toggle="collapse"
                  data-bs-target="#galleryCollapse" aria-expanded="false" aria-controls="galleryCollapse"
                  data-i18n="galleryToggle">
            View Photos of International Yoga Diwas – Yoga Sangam 2025
          </button>
        </div>

        <div class="collapse" id="galleryCollapse">
          <div class="row g-3" id="galleryContainer" data-aos="fade-up" data-aos-delay="50">
            <!-- images will be injected here when collapse opens -->
          </div>
        </div>
      </div>
    </section>

    <!-- ===== Contact CTA ===== -->
    <section id="contact" class="section-pad pt-0">
      <div class="container">
        <div class="p-4 p-lg-5 rounded-4 border d-flex flex-column flex-lg-row align-items-lg-center justify-content-between" style="background:#fff">
          <div class="mb-3 mb-lg-0">
            <div class="eyebrow" data-i18n="contactCta">Get Involved</div>
            <h3 class="mb-1" data-i18n="contactTitle">Have questions or want to contribute?</h3>
            <p class="text-muted mb-0" data-i18n="contactBody">We’d love to hear from you.</p>
          </div>
          <a class="btn btn-brand mt-3 mt-lg-0" href="mailto:mybhilgaon@gmail.com" data-i18n="contactBtn">Email Us</a>
        </div>
      </div>
    </section>

  </main>

  <!-- ===== Footer ===== -->
  <footer id="footer" class="footer">
    <div class="container text-center py-4">
      <p class="mb-1">© <span>Copyright</span> <strong class="px-1 sitename" data-i18n="siteNameFooter">People Of Bhilgaon — Aniket Verma</strong> <span data-i18n="rights">All Rights Reserved</span></p>
      <div class="text-muted small" data-i18n="credits">Maintained by People Of Bhilgaon</div>
    </div>
  </footer>

  <!-- Vendor JS -->
  <script src="/resource/nh/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resource/nh/assets/vendor/aos/aos.js"></script>
  <script src="/resource/nh/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resource/nh/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resource/nh/assets/js/main.js"></script>

  <!-- Lazy-load gallery images only when collapse opens -->
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

  <!-- Client-side i18n (EN / HI / MR) -->
  <script>
    const I18N = {
      en: {
        siteName: "People Of Bhilgaon",
        siteNameFooter: "People Of Bhilgaon — Aniket Verma",
        rights: "All Rights Reserved",
        credits: "Maintained by People Of Bhilgaon",
        langLabel: "Language",
        navHome: "Home",
        navRegister: "Register",
        navLogin: "Login",
        navEvents: "Events",
        navPhotos: "Photos",
        navContact: "Contact",
        ctaUpcoming: "Upcoming Events",
        eyebrow: "Community • Faith • Heritage",
        headline: "Uniting Bhilgaon With Devotion",
        sub: "We’re hosting the divine Shree Ram Katha and attempting a record by writing “Ram” 108,000 times — spreading peace and devotion.",
        btnJoin: "Join the Initiative",
        btnMemories: "View Memories",
        kpi1Num: "200+",
        kpi1Lbl: "Participants",
        kpi2Num: "108k",
        kpi2Lbl: "“Ram” Target",
        kpi3Num: "Nov ’25",
        kpi3Lbl: "Event Month",
        aboutEyebrow: "About Us",
        aboutTitle: "Rooted in Devotion, United in Progress",
        aboutBody: "We are a vibrant community celebrating our cultural heritage while embracing growth. This November we will host Shree Ram Katha and write “Ram” 108,000 times together.",
        v1Title: "Community First",
        v1Body: "Inclusive, volunteer-driven programs.",
        v2Title: "Culture Alive",
        v2Body: "Celebrations & learning for all ages.",
        v3Title: "Giving Back",
        v3Body: "Service (seva) and outreach.",
        aboutCta: "See Upcoming Events",
        galleryEyebrow: "Gallery",
        galleryTitle: "Moments from Yoga Sangam 2025",
        galleryTag: "A glimpse of our community spirit.",
        galleryToggle: "View Photos of International Yoga Diwas – Yoga Sangam 2025",
        contactCta: "Get Involved",
        contactTitle: "Have questions or want to contribute?",
        contactBody: "We’d love to hear from you.",
        contactBtn: "Email Us"
      },
      hi: {
        siteName: "पीपल ऑफ भिलगांव",
        siteNameFooter: "पीपल ऑफ भिलगांव — अनिकेत वर्मा",
        rights: "सभी अधिकार सुरक्षित",
        credits: "पीपल ऑफ भिलगांव द्वारा संचालित",
        langLabel: "भाषा",
        navHome: "होम",
        navRegister: "रजिस्टर",
        navLogin: "लॉगिन",
        navEvents: "कार्यक्रम",
        navPhotos: "फ़ोटो",
        navContact: "संपर्क",
        ctaUpcoming: "आने वाले कार्यक्रम",
        eyebrow: "समुदाय • आस्था • विरासत",
        headline: "भिलगांव एकजुट — भक्ति के संग",
        sub: "हम दिव्य श्री राम कथा आयोजित कर रहे हैं और “राम” नाम 1,08,000 बार लिखने का संकल्प लेकर शांति और भक्ति का संदेश फैला रहे हैं।",
        btnJoin: "अभियान से जुड़ें",
        btnMemories: "यादें देखें",
        kpi1Num: "200+",
        kpi1Lbl: "प्रतिभागी",
        kpi2Num: "108k",
        kpi2Lbl: "“राम” लक्ष्य",
        kpi3Num: "नवंबर ’25",
        kpi3Lbl: "कार्यक्रम माह",
        aboutEyebrow: "हमारे बारे में",
        aboutTitle: "भक्ति में जड़ें, प्रगति में कदम",
        aboutBody: "हम एक जीवंत समुदाय हैं जो संस्कृति को संजोते हुए आगे बढ़ रहा है। इस नवंबर हम श्री राम कथा आयोजित करेंगे और मिलकर “राम” 1,08,000 बार लिखेंगे।",
        v1Title: "समुदाय पहले",
        v1Body: "समावेशी, स्वयंसेवी कार्यक्रम।",
        v2Title: "जीवंत संस्कृति",
        v2Body: "हर उम्र के लिए पर्व और सीख।",
        v3Title: "समर्पित सेवा",
        v3Body: "सेवा और जनकल्याण।",
        aboutCta: "आने वाले कार्यक्रम देखें",
        galleryEyebrow: "गैलरी",
        galleryTitle: "योग संगम 2025 की झलकियाँ",
        galleryTag: "हमारी सामुदायिक भावना की एक झलक।",
        galleryToggle: "अंतर्राष्ट्रीय योग दिवस – योग संगम 2025 की तस्वीरें देखें",
        contactCta: "शामिल हों",
        contactTitle: "कोई प्रश्न हैं या योगदान देना चाहते हैं?",
        contactBody: "हम आपसे सुनना पसंद करेंगे।",
        contactBtn: "ईमेल करें"
      },
      mr: {
        siteName: "पीपल ऑफ भिलगाव",
        siteNameFooter: "पीपल ऑफ भिलगाव — अनिकेत वर्मा",
        rights: "सर्व हक्क राखीव",
        credits: "पीपल ऑफ भिलगावद्वारे व्यवस्थापित",
        langLabel: "भाषा",
        navHome: "मुख्यपृष्ठ",
        navRegister: "नोंदणी",
        navLogin: "लॉगिन",
        navEvents: "कार्यक्रम",
        navPhotos: "छायाचित्र",
        navContact: "संपर्क",
        ctaUpcoming: "आगामी कार्यक्रम",
        eyebrow: "समुदाय • श्रद्धा • परंपरा",
        headline: "भक्तीने भिलगाव एकत्र",
        sub: "आम्ही दिव्य श्री राम कथा आयोजित करीत आहोत आणि “राम” हे नाव 1,08,000 वेळा लिहिण्याचा संकल्प करून शांतता व भक्तीचा संदेश पसरवत आहोत.",
        btnJoin: "उपक्रमात सामील व्हा",
        btnMemories: "आठवणी पाहा",
        kpi1Num: "200+",
        kpi1Lbl: "सहभागी",
        kpi2Num: "108k",
        kpi2Lbl: "“राम” लक्ष्य",
        kpi3Num: "नोव्हें ’25",
        kpi3Lbl: "कार्यक्रम महिना",
        aboutEyebrow: "आमच्याबद्दल",
        aboutTitle: "भक्तीत मुळे, प्रगतीत पाऊल",
        aboutBody: "आम्ही संस्कृती जपत वाढ स्वीकारणारा उत्साही समुदाय आहोत। या नोव्हेंबरमध्ये आम्ही श्री राम कथा आयोजित करून एकत्र “राम” 1,08,000 वेळा लिहू.",
        v1Title: "समुदाय प्रथम",
        v1Body: "समावेशक, स्वयंसेवी उपक्रम.",
        v2Title: "जिवंत संस्कृती",
        v2Body: "सर्व वयोगटांसाठी सण व ज्ञान.",
        v3Title: "सेवेची भावना",
        v3Body: "सेवा व जनउपयोगी कामे.",
        aboutCta: "आगामी कार्यक्रम पहा",
        galleryEyebrow: "गॅलरी",
        galleryTitle: "योग संगम 2025 चे क्षण",
        galleryTag: "आमच्या एकतेची एक झलक.",
        galleryToggle: "आंतरराष्ट्रीय योग दिन – योग संगम 2025 चे फोटो पहा",
        contactCta: "सहभागी व्हा",
        contactTitle: "प्रश्न आहेत? योगदान द्यायचे आहे?",
        contactBody: "आम्हाला तुमच्याकडून ऐकायला आवडेल.",
        contactBtn: "ईमेल करा"
      }
    };

    function applyLang(lang) {
      const dict = I18N[lang] || I18N.en;
      document.querySelectorAll("[data-i18n]").forEach(el => {
        const key = el.getAttribute("data-i18n");
        if (dict[key] !== undefined) {
          el.textContent = dict[key];
        }
      });
      // Persist choice
      try { localStorage.setItem("bh_lang", lang); } catch (e) {}
      // Update <html lang="">
      document.documentElement.setAttribute("lang", lang === "en" ? "en" : lang);
    }

    (function initLang() {
      const saved = (localStorage.getItem("bh_lang") || "en");
      const select = document.getElementById("lang");
      if (select) {
        select.value = saved;
        select.addEventListener("change", e => applyLang(e.target.value));
      }
      applyLang(saved);
    })();

    // Init animations/lightbox
    try { AOS.init({ once: true, duration: 700, easing: "ease-out-cubic" }); } catch (e) {}
    try { GLightbox({ selector: '.glightbox' }); } catch (e) {}
  </script>
</body>
</html>