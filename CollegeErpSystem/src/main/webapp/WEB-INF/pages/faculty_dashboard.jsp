<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Faculty Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .dashboard-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .dashboard-container a {
            display: block;
            width: 250px;
            text-align: center;
            padding: 12px;
            margin: 10px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .dashboard-container a:hover {
            background-color: #274472;
        }

        .dashboard-header {
            color: #1E3A8A;
            text-align: center;
            margin-top: 15px;
            font-size: 28px;
        }

        .faculty-info {
            text-align: center;
            margin-bottom: 20px;
            font-size: 18px;
            color: #333;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            color: #555;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container">
    <h1 class="dashboard-header">Faculty Dashboard</h1>

    <div class="faculty-info">
        <p>Name: ${loginMsg.fname}</p>
        <p>Email: ${loginMsg.email}</p>
        <p>Subject: ${loginMsg.subject}</p>
    </div>

    <div class="dashboard-container">
        <a href="addstudent">Add Student</a>
        <a href="studentreport">Student Report</a>
        <a href="assginmark">Add Marks</a>
        <a href="shownotification">Show Notification</a>
        <a href="attendance">Add Attendance</a>
        <a href="attendancereport">Show Attendance</a>
    </div>

    <div style="text-align:center; margin-top:15px;">
        <a href="./" class="back-link" style="display:inline-block; padding:8px 15px; background-color:#1E3A8A; color:white; text-decoration:none; border-radius:5px;">Home</a>
    </div>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
