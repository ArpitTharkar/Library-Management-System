<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Added - Library Management</title>
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
        padding-bottom: 80px;
    }

    /* Navigation Bar */
    .navbar {
        width: 100%;
        background: linear-gradient(to right, #283593, #1976d2);
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
        background: rgba(255, 255, 255, 0.2);
        border-radius: 5px;
    }

    /* Content Container */
    .container {
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 90%;
        max-width: 600px;
        margin-top: 100px;
    }

    /* Headings */
    h1 {
        color: #1a237e;
        font-size: 24px;
        margin-bottom: 10px;
    }

    /* P1 Styling */
    p1 {
        font-size: 18px;
        color: #333;
        display: block;
        margin-bottom: 15px;
    }

    /* Show Table Button */
    .show-table-btn {
        background: #1976d2;
        color: white;
        font-size: 18px;
        cursor: pointer;
        border: none;
        transition: 0.3s;
        width: 220px;
        padding: 12px;
        margin-top: 10px;
        border-radius: 5px;
        font-weight: bold;
        text-decoration: none;
        display: inline-block;
        text-align: center;
    }

    .show-table-btn:hover {
        background: #1565c0;
        transform: scale(1.05);
    }

    /* Footer */
    .footer {
        width: 100%;
        background: linear-gradient(to right, #283593, #1976d2);
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
    <a href="register.jsp">Sign Up</a>
    <a href="login.jsp">Login</a>
 
</div>

<!-- Confirmation Section -->
<div class="container">
    <h1>Welcome! Your Book Has Been Added.</h1>
    <p1>Your book has been successfully added to the library database. Click below to view the updated list of books.</p1>
    <a href="welcome.jsp" class="show-table-btn">Show view table</a>
</div>

<!-- Footer -->
<div class="footer">
    <p>Library Management System &copy; 2025. All Rights Reserved.</p>
</div>

</body>
</html>
