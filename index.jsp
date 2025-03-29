<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System - Home</title>
<style>
   /* General Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    /* Background */
    body {
        background: linear-gradient(to right, #e3f2fd, #bbdefb);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        padding-bottom: 80px; /* Prevents footer overlap */
    }

    /* Navigation Bar */
    .navbar {
        width: 100%;
        background: linear-gradient(to right, #283593, #1976d2); /* Deep Blue Gradient */
        padding: 15px 0;
        text-align: center;
        position: fixed;
        top: 0;
        left: 0;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
    }

    .navbar a {
        color: white;
        text-decoration: none;
        font-size: 18px;
        margin: 0 20px;
        font-weight: bold;
        padding: 10px 15px;
        transition: 0.3s;
    }

    .navbar a:hover {
        background: rgba(255, 255, 255, 0.2); /* Soft hover effect */
        border-radius: 5px;
    }

    /* Library Title Section */
    .library-title {
        text-align: center;
        margin-top: 100px;
        color: #1a237e; /* Deep Blue */
        font-size: 32px;
        font-weight: bold;
    }

    /* Main Content Section */
    .main {
        margin-top: 20px;
        max-width: 800px;
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
    }

    h1 {
        color: #1a237e; /* Deep Blue */
        font-size: 28px;
        margin-bottom: 10px;
    }

    p {
        color: #555;
        font-size: 18px;
        margin: 15px 0;
        line-height: 1.6;
    }

    /* Buttons */
    .btn-container {
        margin-top: 20px;
    }

    .btn {
        display: inline-block;
        padding: 12px 25px;
        margin: 10px;
        font-size: 18px;
        color: white;
        background: #1976d2; /* Blue */
        text-decoration: none;
        border-radius: 5px;
        transition: 0.3s;
        font-weight: bold;
    }

    .btn:hover {
        background: #1565c0; /* Darker Blue */
        transform: scale(1.03);
    }

    /* Footer */
    .footer {
        width: 100%;
        background: linear-gradient(to right, #283593, #1976d2); /* Matching Navbar */
        color: white;
        text-align: center;
        padding: 12px;
        position: fixed;
        bottom: 0;
        left: 0;
        font-size: 14px;
        box-shadow: 0px -4px 8px rgba(0, 0, 0, 0.3);
    }
</style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
    <a href="index.jsp">Home</a>
    <a href="register.jsp">Register</a>
    <a href="login.jsp">Login</a>
    <a href="contact.jsp">Contact Us</a>
</div>

<!-- Library Title Section -->
<h1 class="library-title">Your Gateway to Knowledge & Learning <br><br>Welcome To..</h1>

<!-- Main Content -->
<div class="main">
    <h1>Library Management System</h1>
    <p>
        Our Library Management System helps users to manage book records efficiently.  
        Whether you are an administrator, librarian, or a student, our system makes  
        book borrowing and tracking easy and seamless.
    </p>

    <!-- Buttons for Register & Login -->
    <div class="btn-container">
        <a href="register.jsp" class="btn">Register</a>
        <a href="login.jsp" class="btn">Login</a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>Library Management System &copy; 2025. All Rights Reserved.</p>
</div>

</body>
</html>
