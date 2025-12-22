<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Notifications</title>
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

        h1 {
            text-align: center;
            color: #1E3A8A;
            margin-top: 30px;
        }

        .notification {
            background-color: #fff8dc;
            padding: 15px;
            margin: 15px auto;
            border: 1px solid #ccc;
            border-radius: 8px;
            max-width: 600px;
            box-shadow: 1px 1px 5px gray;
        }

        .notification h3 {
            margin: 0;
            color: #d2691e;
        }

        .notification p {
            margin-top: 5px;
            font-size: 16px;
            color: #333;
        }

        .back-link {
            text-align: center;
            margin: 20px 0;
        }

        .back-link a {
            color: #1E3A8A;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
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

<h1>Notifications</h1>

<c:forEach var="n" items="${notifList}">
    <div class="notification">
        <h3>${n.notifiydate}</h3>
        <p>${n.message}</p>
    </div>
</c:forEach>

<div class="back-link">
    <a href="f_dashboard">Back to Dashboard</a>
</div>

<footer>© 2025 My College Name</footer>

</body>
</html>
