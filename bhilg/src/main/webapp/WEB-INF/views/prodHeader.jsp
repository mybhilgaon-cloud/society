<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<style>
:root{
    --primary-blue:#0d6efd;
    --dark-blue:#0b5ed7;
    --light-blue:#e0f0ff;
    --ink:#0f1115;
}

.sitename{
    font-family:Poppins,sans-serif;
    font-weight:800;
    letter-spacing:.5px;
    color:var(--primary-blue);
}

.header.sticky-top{
    box-shadow:0 4px 15px rgba(0,0,0,.08);
    z-index:1030;
    background:#fff;
}

.topbar{
    background:#f0f4ff;
}

.btn-brand{
    background:var(--primary-blue);
    color:#fff;
    border-radius:50px;
    padding:12px 28px;
    font-weight:700;
    text-decoration:none;
}

.btn-brand:hover{
    background:var(--dark-blue);
    color:#fff;
}

.navbar-toggler{
    padding:4px 8px;
}

.navbar-collapse{
    background:#fff;
    border-radius:12px;
    margin-top:10px;
}

.navbar-nav .nav-link{
    padding:12px 15px;
    font-weight:600;
    color:#222 !important;
}

.navbar-nav .nav-link:hover{
    color:#0d6efd !important;
}

@media(max-width:991px){

    .topbar .container{
        flex-direction:column;
        gap:10px;
        text-align:center;
    }

    .branding .container{
        flex-wrap:wrap;
    }

    .sitename{
        font-size:1.4rem !important;
    }
}
</style>

<header id="header" class="header sticky-top">

    <div class="topbar d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between py-2">

            <div class="contact-info d-flex align-items-center gap-3">
                <i class="bi bi-envelope"></i>
                <a href="mailto:mybhilgaon@gmail.com"
                   class="text-decoration-none">
                    mybhilgaon@gmail.com
                </a>
            </div>

            <div class="d-flex align-items-center gap-2">
                <span class="small opacity-75">Language</span>

                <select id="lang"
                        class="form-select form-select-sm">
                    <option value="en">English</option>
                    <option value="hi">हिन्दी</option>
                    <option value="mr">मराठी</option>
                </select>
            </div>

        </div>
    </div>

    <div class="branding py-3">

        <div class="container d-flex align-items-center justify-content-between">

            <a href="/home"
               class="logo text-decoration-none">

                <h1 class="sitename fs-3 mb-0">
                    People Of Bhilgaon
                </h1>

            </a>

            <nav class="navbar navbar-expand-lg navbar-light p-0">

                <button class="navbar-toggler border-0 shadow-none"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#mobileNav">

                    <span class="navbar-toggler-icon"></span>

                </button>

                <div class="collapse navbar-collapse"
                     id="mobileNav">

                    <ul class="navbar-nav ms-auto align-items-lg-center">

                        <li class="nav-item">
                            <a class="nav-link"
                               href="/home">
                                Home
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="/register">
                                Register
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="/login">
                                Login
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="/reports/users">
                                Reports
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link"
                               href="/event">
                                Events
                            </a>
                        </li>

                    </ul>

                </div>

            </nav>

            <a href="/register"
               class="btn btn-brand d-none d-md-inline">

                Join Now

            </a>

        </div>

    </div>

</header>