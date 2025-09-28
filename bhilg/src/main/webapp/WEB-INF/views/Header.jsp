<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- header fragment: keep only the nav markup and minimal styles -->
<style>
  .ftco_navbar {
      background-color: rgba(0, 0, 0, 0.75) !important;
      transition: background-color 0.3s ease;
      position: relative; /* or fixed if you prefer fixed-top */
      z-index: 999;
  }
  .ftco_navbar .nav-link { color: #fff !important; }
  .ftco_navbar .navbar-brand span { color: #f8f9fa !important; }
</style>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar" id="ftco-navbar">
  <div class="container">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/home">People Of <span>Bhilgaon</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="oi oi-menu"></span> Menu
    </button>

    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a href="${pageContext.request.contextPath}/home" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/register" class="nav-link">Register</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/getuser" class="nav-link">Login</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/about" class="nav-link">About</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/events" class="nav-link">Events</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>
