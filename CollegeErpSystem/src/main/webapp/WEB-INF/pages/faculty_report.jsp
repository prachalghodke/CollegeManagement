<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Faculty Report</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .report-container {
            max-width: 900px;
            margin: 20px auto;
            padding: 10px;
        }

        h2 {
            text-align: center;
            color: #1E3A8A;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #1E3A8A;
            color: white;
        }

        td a {
            margin: 0 5px;
            padding: 5px 10px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
        }

        td a:hover {
            background-color: #274472;
        }

        .action-links {
            text-align: center;
            margin-top: 15px;
        }

        .action-links a {
            display: inline-block;
            margin: 5px;
            padding: 8px 15px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .action-links a:hover {
            background-color: #274472;
        }

        .message {
            text-align: center;
            color: green;
            margin-bottom: 15px;
        }

        .no-data {
            text-align: center;
            color: red;
            font-size: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container report-container">

    <h2>Faculty Report</h2>

    <div class="message">${resultMsg}</div>

    <c:choose>
        <c:when test="${!empty facultylists}">
            <table>
                <tr>
                    <th>FID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="fact" items="${facultylists}">
                    <tr>
                        <td>${fact.fid}</td>
                        <td>${fact.fname}</td>
                        <td>${fact.email}</td>
                        <td>${fact.subject}</td>
                        <td>
                            <a href="edit?no=${fact.fid}">Edit</a>
                            <a href="delete?no=${fact.fid}" onclick="return confirm('Do you want to delete?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <div class="no-data">Faculty Not Found</div>
        </c:otherwise>
    </c:choose>

    <div class="action-links">
        <a href="addfaculty">Add Faculty</a>
        <a href="a_dashboard">Back to Dashboard</a>
        <a href="./">Home</a>
    </div>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
