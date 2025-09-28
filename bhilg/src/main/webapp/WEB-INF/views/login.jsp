<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login | People Of Bhilgaon</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">

  <style>
    body {
      margin: 0;
      background-color: #1e1e23;
      color: #fff;
      font-family: Arial, sans-serif;
    }

    /* ✅ Navbar styling */
    nav.navbar {
      background-color: #000;
      padding: 15px 60px;
      box-shadow: 0 0 20px #ff007f;
      position: sticky;
      top: 0;
      z-index: 1000;
    }
    nav.navbar .navbar-brand {
      font-size: 24px;
      color: #fff !important;
      font-weight: bold;
    }
    nav.navbar .nav-link {
      color: #fff !important;
      margin: 0 10px;
      font-weight: 500;
    }
    nav.navbar .nav-link:hover {
      color: #ff007f !important;
    }

    /* ✅ Login/Register container */
    .auth-wrapper {
      display: flex;
      justify-content: center;
      align-items: flex-start;
      margin-top: 80px;
      padding: 20px;
    }

    .auth-box {
      background: #2a2a31;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 0 15px #ff007f;
      width: 350px;
      margin: 0 20px;
    }

    .auth-box h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .auth-box input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: none;
      border-radius: 5px;
    }

    .auth-box button {
      width: 100%;
      padding: 10px;
      background: linear-gradient(90deg, #ff007f, #ff0055);
      border: none;
      border-radius: 5px;
      color: #fff;
      font-weight: bold;
      margin-top: 10px;
      cursor: pointer;
    }

    .auth-box button:hover {
      background: linear-gradient(90deg, #ff3399, #ff0066);
    }

    .auth-box p {
      text-align: center;
      margin-top: 15px;
    }

    .auth-box p a {
      color: #ffcc00;
      text-decoration: none;
      font-weight: bold;
    }
    .auth-box p a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <!-- ✅ Navbar -->
  <nav class="navbar navbar-expand-lg">
    <a class="navbar-brand" href="#">People Of Bhilgaon</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Register</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
        <li class="nav-item"><a class="nav-link" href="#">About</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Events</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
      </ul>
    </div>
  </nav>

  <!-- ✅ Login/Register Form Section -->
  <div class="auth-wrapper">
    <div class="auth-box">
      <h2>Login</h2>
      <form action="login" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
        <p>Don't have an account? <a href="#">Sign Up</a></p>
      </form>
    </div>

    <div class="auth-box">
      <h2>Register</h2>
      <form action="register" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Register</button>
        <p>Already have an account? <a href="#">Sign In</a></p>
      </form>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
