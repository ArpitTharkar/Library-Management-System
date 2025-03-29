<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management - Book List</title>
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

    /* Table Container */
    .container {
        background: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 90%;
        max-width: 1000px;
        margin-top: 80px;
    }

    /* Headings */
    h1 {
        color: #1a237e;
        font-size: 24px;
        margin-bottom: 10px;
    }

    h2 {
        color: #1976d2;
        font-size: 20px;
        margin-bottom: 15px;
    }

    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
        border-radius: 10px;
        overflow: hidden;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background: #1976d2;
        color: white;
        font-size: 18px;
    }

    tr:nth-child(even) {
        background: #f2f2f2;
    }

    tr:hover {
        background: #e3f2fd;
        transition: 0.3s;
    }

    /* Edit & Delete Buttons */
    a {
        text-decoration: none;
        font-weight: bold;
        padding: 8px 12px;
        border-radius: 5px;
        transition: 0.3s;
        display: inline-block;
    }

    /* Edit Button - Dark Green */
    a[href*='Edit'] {
        background: #388e3c;
        color: black;
    }

    a[href*='Edit']:hover {
        background: #2e7d32;
        color: white;
    }

    /* Delete Button - Orange */
    a[href*='delete'] {
        background: #ff9800;
        color: white;
    }

    a[href*='delete']:hover {
        background: #f57c00;
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

    /* Additional Content */
    .extra-content {
        margin-top: 20px;
    }

    /* P1 Styling */
    p1 {
        font-size: 18px;
        color: #333;
        display: block;
        margin-bottom: 15px;
    }

    /* "Add Another Book" Button */
    .add-book-btn {
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

    .add-book-btn:hover {
        background: #1565c0;
        transform: scale(1.05);
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

<!-- Books Table Section -->
<div class="container">
    <h1>Library Management System</h1>
    <h2>Available Books</h2>
    
    <table>
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Author Name</th>
            <th>Category</th>
            <th>Available</th>
            <th>Status</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        
        <c:forEach var="lib" items="${data}">
        <tr>
            <td>${lib.bookid}</td> 
            <td>${lib.bookname}</td> 
            <td>${lib.authorname}</td> 
            <td>${lib.category}</td> 
            <td>${lib.available}</td>
            <td>${lib.status}</td>
            <td><a href="<c:url value='/${lib.bookid}'/>">Edit</a></td>
            <td><a href="<c:url value='delete/${lib.bookid}'/>">Delete</a></td>
        </tr>
        </c:forEach>
    </table>

    <!-- Additional Content Below the Table -->
    <div class="extra-content">
        <p1>Click the button below to add another book to the library database.</p1>
        <a href="welcome.jsp" class="add-book-btn">Add Another Book</a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>Library Management System &copy; 2025. All Rights Reserved.</p>
</div>

</body>
</html>
