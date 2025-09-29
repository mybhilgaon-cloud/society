<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Bhilgaon - Shree Ram Katha & World Record Event</title>
  <meta name="description" content="Join the Shree Ram Katha and World Record attempt in Bhilgaon, a celebration of dharma, gyan, and culture.">
  <meta name="keywords" content="Ram Katha, Bhilgaon, World Record, Lord Rama, Culture, Dharma">

  <!-- Favicons -->
  <link href="/resource/nh/assets/img/favicon.png" rel="icon">
  <link href="/resource/nh/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resource/nh/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resource/nh/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="/resource/nh/assets/css/main.css" rel="stylesheet">

  <!-- Custom CSS for Enhanced Styling -->
  <style>
    body {
      background: #fffbf7;
      font-family: 'Poppins', sans-serif;
    }
    .hero-section {
      background: linear-gradient(135deg, #ff8c00 0%, #ffd700 100%);
      height: 60vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: white;
      position: relative;
      overflow: hidden;
    }
    .hero-section::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.3);
      z-index: 1;
    }
    .hero-section .container {
      position: relative;
      z-index: 2;
    }
    .hero-section h1 {
      font-size: 3.5rem;
      font-weight: 800;
      color: #fff;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    .hero-section p {
      font-size: 1.5rem;
      font-weight: 300;
      color: #f0e68c;
    }
    .event-section {
      background: linear-gradient(135deg, #ffe4b5 0%, #ffdead 100%);
      padding: 80px 0;
      border-radius: 20px;
      margin: 20px 0;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
    }
    .event-section h3 {
      color: #8b4513;
      font-weight: 700;
      font-family: 'Raleway', sans-serif;
      text-transform: uppercase;
      letter-spacing: 2px;
      margin-bottom: 20px;
    }
    .cta-btn {
      background: linear-gradient(45deg, #d4a017, #ffa500);
      color: white;
      padding: 15px 40px;
      border-radius: 50px;
      font-size: 1.2rem;
      font-weight: 600;
      text-transform: uppercase;
      transition: all 0.3s ease;
      border: none;
    }
    .cta-btn:hover {
      background: linear-gradient(45deg, #b8860b, #ff8c00);
      transform: translateY(-2px);
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
      color: white;
      text-decoration: none;
    }
    .participation-section {
      background: #fffaf0;
      padding: 60px 0;
      border-radius: 20px;
      margin: 20px 0;
    }
    .registration-section {
      background: linear-gradient(135deg, #f8f9fa 0%, #e6e6fa 100%);
      padding: 50px 0;
      text-align: center;
      border-radius: 20px;
      margin: 20px 0;
    }
    .registration-section .cta-btn {
      font-size: 1.5rem;
      padding: 20px 60px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
    }
    .section-title {
      text-align: center;
      margin-bottom: 50px;
    }
    .section-title h2 {
      color: #2c3e50;
      font-family: 'Raleway', sans-serif;
      font-weight: 800;
      font-size: 2.5rem;
      text-transform: uppercase;
    }
    .section-title p {
      color: #555;
      font-size: 1.2rem;
    }
    .content p {
      font-size: 1.1rem;
      line-height: 1.8;
      color: #333;
    }
    .content-box {
      background: #fff;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }
    @media (max-width: 768px) {
      .hero-section h1 {
        font-size: 2.5rem;
      }
      .hero-section p {
        font-size: 1.2rem;
      }
      .event-section, .participation-section, .registration-section {
        padding: 40px 0;
      }
    }
  </style>
</head>

<body class="index-page">

  <header id="header" class="header sticky-top">

    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
          <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">mybhilgaon@gmail.com</a></i>
        </div>
        <div class="social-links d-none d-md-flex align-items-center">
          <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>
    </div><!-- End Top Bar -->

    <div class="branding d-flex align-items-center">
      <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center me-auto">
          <h1 class="sitename">People Of Bhilgaon</h1>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul>
            <li><a href="#hero" class="active">Home<br></a></li>
            <li><a href="#about">Register</a></li>
            <li><a href="#services">Login</a></li>
            <li><a href="#departments">Events</a></li>
            <li><a href="#doctors">Photos</a></li>
            <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>

        <a class="cta-btn d-none d-sm-block" href="#appointment">Upcoming Events</a>
      </div>
    </div>

  </header>

  <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero-section">
      <div class="container text-center" data-aos="zoom-in" data-aos-delay="100">
        <h1>Shree Ram Katha & World Record</h1>
        <p>Join Bhilgaon in a Divine Celebration of Dharma, Gyan, and Culture!</p>
        <a href="#registration" class="cta-btn mt-4">Join Now</a>
      </div>
    </section><!-- /Hero Section -->

    <!-- Event Section -->
    <section id="event" class="event-section">
      <div class="container section-title" data-aos="fade-up">
        <h2>The Event</h2>
        <p>Shree Ram Katha and a Historic World Record Attempt</p>
      </div>
      <div class="container">
        <div class="content-box" data-aos="fade-up" data-aos-delay="100">
          <h3>Shree Ram Katha: A Journey of Dharma and Gyan</h3>
          <p>
            The Shree Ram Katha, organized by the devoted people of Bhilgaon, is a sacred narration of Lord Rama's life, embodying the essence of <strong>dharma</strong> (righteousness). This divine event imparts profound <strong>gyan</strong> (knowledge) through the timeless teachings of the Ramayana, guiding us on the path of duty, honor, and devotion. It is a celebration of our rich cultural heritage, uniting communities in a shared spiritual experience that fosters peace, moral clarity, and spiritual awakening.
          </p>
          <h3>World Record Attempt: Writing "Ram" on a 1100-Meter Cloth</h3>
          <p>
            In a historic endeavor, we aim to set a world record by writing the holy name "Ram" the maximum number of times on a 100-meter cotton cloth. This collective act of <strong>bhakti</strong> (devotion) symbolizes unity and spiritual commitment, reflecting the principles of Sanatan Dharma. Each stroke of the pen is a meditative offering, weaving a tapestry of faith that preserves our cultural traditions and strengthens community bonds. This initiative is not just about breaking a record—it's about creating a legacy of devotion and togetherness that will inspire generations.
          </p>
          <p>
            Together, these events create a transformative experience that rejuvenates the soul, enriches the mind with timeless wisdom, and celebrates the vibrant cultural tapestry of Bhilgaon. Join us to immerse in dharma, gain gyan, and contribute to a historic moment of cultural pride.
          </p>
        </div>
      </div>
    </section><!-- /Event Section -->

    <!-- Participation Section -->
    <section id="participation" class="participation-section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Who Can Participate</h2>
        <p>Everyone is Welcome to Join the Celebration</p>
      </div>
      <div class="container">
        <div class="content-box" data-aos="fade-up" data-aos-delay="100">
          <h3>Open to All</h3>
          <p>
            The Shree Ram Katha and world record attempt are open to everyone—young or old, local or global. Whether you're a resident of Bhilgaon or a devotee from afar, your participation will add to the divine energy of this event. No prior experience is needed, just a heart full of devotion and a desire to be part of something extraordinary that celebrates our shared cultural and spiritual heritage.
          </p>
          <p>
            To join, simply register through our platform. Upon registration, you'll receive detailed information about the event schedule, guidelines for the world record attempt, and ways to engage in the Ram Katha sessions. Be a part of this inclusive gathering that celebrates unity, faith, and cultural pride, fostering a sense of belonging and spiritual fulfillment.
          </p>
          <a href="#registration" class="cta-btn mt-3">Learn How to Register</a>
        </div>
      </div>
    </section><!-- /Participation Section -->

    <!-- Registration Section -->
    <section id="registration" class="registration-section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Register Now</h2>
        <a class="cta-btn" href="/register">Register for the Event</a>
      </div>
    </section><!-- /Registration Section -->

  </main>

  <footer id="footer" class="footer light-background">
    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong class="px-1 sitename">People Of Bhilgaon - Aniket Verma</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        Maintained By People Of Bhilgaon <a href="https://bootstrapmade.com/"></a> Thanks to ThemeWagon
      </div>
    </div>
  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="/resource/nh/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resource/nh/assets/vendor/php-email-form/validate.js"></script>
  <script src="/resource/nh/assets/vendor/aos/aos.js"></script>
  <script src="/resource/nh/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resource/nh/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/resource/nh/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="/resource/nh/assets/js/main.js"></script>

</body>

</html>