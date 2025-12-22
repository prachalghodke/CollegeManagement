<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Take Attendance</title>
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
            width: 900px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        h2 {
            color: #1E3A8A;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #1E3A8A;
            color: white;
        }

        input[type="radio"] {
            margin: 0 5px;
        }

        input[type="submit"] {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .msg {
            text-align: center;
            color: green;
            margin-top: 15px;
            font-size: 16px;
        }

        .links {
            text-align: center;
            margin-top: 25px;
        }

        .links a {
            margin: 0 10px;
            padding: 8px 15px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        .links a:hover {
            background-color: #274472;
        }
    </style>
</head>
<body>

<header>My College ERP System</header>

<div class="container">

    <h2>Take Attendance</h2>

    <form action="saveattendance" method="post">
        <table>
            <tr>
                <th>SID</th>
                <th>Name</th>
                <th>Status</th>
            </tr>

            <c:forEach var="stud" items="${students}">
                <tr>
                    <td>${stud.sid}</td>
                    <td>${stud.sname}</td>
                    <td>
                        Present
                        <input type="radio" name="status_${stud.sid}" value="Present" required />
                        Absent
                        <input type="radio" name="status_${stud.sid}" value="Absent" required />
                    </td>
                </tr>
            </c:forEach>
        </table>

        <input type="submit" value="Save Attendance">
    </form>

    <div class="msg">${msg}</div>

    <div class="links">
        <a href="attendancereport">Show Attendance</a>
        <a href="f_dashboard">Back to Dashboard</a>
        <a href="./">Home</a>
    </div>

</div>

</body>
</html>
