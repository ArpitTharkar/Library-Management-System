<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management - Welcome</title>
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

    /* Form Container */
    .container {
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 420px;
        margin-top: 80px; /* Adjusted spacing */
    }

    /* Headings */
    h1 {
        color: #1a237e; /* Deep Blue */
        font-size: 24px;
        margin-bottom: 10px;
    }

    h2 {
        color: #1976d2;
        font-size: 20px;
        margin-bottom: 15px;
    }

    /* Input Fields */
    input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    /* Submit Button */
    input[type="submit"] {
        background: #1976d2;
        color: white;
        font-size: 18px;
        cursor: pointer;
        border: none;
        transition: 0.3s;
        width: 100%;
        padding: 12px;
        margin-top: 10px;
        border-radius: 5px;
        font-weight: bold;
    }

    input[type="submit"]:hover {
        background: #1565c0; /* Darker Blue */
        transform: scale(1.03); /* Subtle button animation */
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
    <a href="register.jsp">Sign Up</a>
    <a href="login.jsp">Login</a>
    <a href="dashboard.jsp">Dashboard</a>
</div>

<!-- Welcome Section -->
<div class="container">
    <h1>Welcome to the Library</h1>
    <h2>Enter the Book Details</h2>
    <form action="addlib" method="post">
        <input type="text" name="bookname" placeholder="Book Name" required><br>
        <input type="text" name="authorname" placeholder="Author" required><br>
        <input type="text" name="category" placeholder="Category" required><br>
        <input type="text" name="available" placeholder="Available (Yes/No)" required><br>
        <input type="text" name="status" placeholder="Status" required><br>
        <input type="submit" value="Save">
    </form>

    <form action="datafetch" method="get">
        <input type="submit" value="Show Books">
    </form>
</div>

<!-- Footer -->
<div class="footer">
    <p>Library Management System &copy; 2025. All Rights Reserved.</p>
</div>

</body>
</html>
