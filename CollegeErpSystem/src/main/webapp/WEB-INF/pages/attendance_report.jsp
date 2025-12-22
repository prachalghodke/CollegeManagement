<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Attendance Report</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .report-container {
            max-width: 800px;
            margin: 20px auto;
        }

        h2 {
            text-align: center;
            color: #1E3A8A;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th {
            background-color: #1E3A8A;
            color: white;
            padding: 10px;
            text-align: center;
        }

        td {
            padding: 8px;
            text-align: center;
        }

        a.back-link {
            display: inline-block;
            margin: 0 auto;
            text-align: center;
            padding: 8px 15px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a.back-link:hover {
            background-color: #274472;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container report-container">
    <h2>Attendance Report</h2>

    <table>
        <tr>
            <th>Attendance ID</th>
            <th>Student Name</th>
            <th>Date</th>
            <th>Status</th>
        </tr>
        <c:forEach var="a" items="${attendanceList}">
            <tr>
                <td>${a.aid}</td>
                <td>${a.student.sname}</td>
                <td>${a.attendance_date}</td>
                <td>${a.status}</td>
            </tr>
        </c:forEach>
    </table>

    <div style="text-align:center;">
        <a href="f_dashboard" class="back-link">Back to Dashboard</a>
    </div>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
