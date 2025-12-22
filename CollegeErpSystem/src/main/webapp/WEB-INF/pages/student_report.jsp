<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Report</title>
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

        td a {
            margin: 0 5px;
            padding: 5px 10px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-size: 13px;
        }

        td a:hover {
            background-color: #0056b3;
        }

        .no-data {
            text-align: center;
            color: red;
            font-size: 18px;
            margin-top: 20px;
        }

        .buttons {
            text-align: center;
            margin-top: 25px;
        }

        .buttons a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #1E3A8A;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        .buttons a:hover {
            background-color: #274472;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            padding: 10px 0;
            background-color: #f2f2f2;
            color: #333;
        }
    </style>
</head>
<body>

<header>My College ERP System</header>

<div class="container">

    <h2>Student Report</h2>

    <c:choose>
        <c:when test="${!empty studentlists}">
            <table>
                <tr>
                    <th>SID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="stud" items="${studentlists}">
                    <tr>
                        <td>${stud.sid}</td>
                        <td>${stud.sname}</td>
                        <td>${stud.email}</td>
                        <td>
                            <a href="sedit?no=${stud.sid}">Edit</a>
                            <a href="sdelete?no=${stud.sid}" onclick="return confirm('Do You Want to Delete')">Delete</a>
                            <a href="assginmark?no=${stud.sid}">Assign Mark</a>
                            <a href="viewmarks?sid=${stud.sid}">View Marks</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <div class="no-data">No Student Found</div>
        </c:otherwise>
    </c:choose>

    <div class="buttons">
        <a href="addstudent">Add Student</a>
        <a href="f_dashboard">Back to Dashboard</a>
        <a href="./">Home</a>
    </div>

</div>

<footer>© 2025 My College Name</footer>

</body>
</html>
