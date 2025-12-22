<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Admin Dashboard</title>
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

        .message {
            text-align: center;
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container">
    <h1 class="dashboard-header">Admin Dashboard</h1>
    <div class="message">${resultMsg}</div>

    <div class="dashboard-container">
        <!-- Uncomment Add Student link if needed -->
        <!-- <a href="addstudent">Add Student</a> -->
        <a href="addfaculty">Add Faculty</a>
        <a href="studentreport">Student Report</a>
        <a href="facultyreport">Faculty Report</a>
        <a href="addNotification">Add Notification</a>
    </div>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
