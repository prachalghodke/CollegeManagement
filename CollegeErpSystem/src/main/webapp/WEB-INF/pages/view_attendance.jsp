<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            width: 600px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
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
            padding: 10px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }

        a.back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }

        a.back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">

    <h2>Attendance Report</h2>

    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <c:if test="${not empty attendance}">
        <table>
            <tr>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <c:forEach var="att" items="${attendance}">
                <tr>
                    <td>${att.attendance_date}</td>
                    <td>${att.status}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <a href="view_dashboard" class="back-link">Back to Dashboard</a>

</div>

</body>
</html>
