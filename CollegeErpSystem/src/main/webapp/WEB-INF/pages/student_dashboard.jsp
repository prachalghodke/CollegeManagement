<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        header {
            text-align: center;
            background-color: #1E3A8A;
            color: white;
            padding: 15px 0;
            font-size: 24px;
        }

        .container {
            width: 700px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        h2 {
            color: #1E3A8A;
            text-align: center;
        }

        .info p {
            font-size: 16px;
            color: #333;
            margin: 5px 0;
        }

        hr {
            margin: 20px 0;
            border: 1px solid #ccc;
        }

        h3 {
            color: #1E3A8A;
            text-align: center;
            margin-bottom: 15px;
        }

        .services {
            text-align: center;
        }

        .services a {
            display: inline-block;
            margin: 10px;
            padding: 12px 20px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 15px;
        }

        .services a:hover {
            background-color: #274472;
        }

        footer {
            text-align: center;
            margin-top: 50px;
            padding: 10px 0;
            background-color: #f2f2f2;
            color: #333;
        }
    </style>
</head>

<body>

<header>My College ERP System</header>

<div class="container">
    <h2>Welcome, ${studentData.sname}</h2>

    <div class="info">
        <p><b>Email:</b> ${studentData.email}</p>
        <%-- <p><b>Faculty:</b> ${studentData.faculty.fname}</p> --%>
    </div>

    <hr>

    <h3>Student Services</h3>

    <div class="services">
        <a href="viewMarks">View Marks</a>
        <a href="viewAttendance">View Attendance</a>
        <a href="logout">Logout</a>
    </div>
</div>

<footer>© 2025 My College Name</footer>

</body>
</html>
