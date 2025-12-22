<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Admin Registration</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .register-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
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

        td {
            padding: 8px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #1E3A8A;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #274472;
        }

        .login-link {
            text-align: center;
            margin-top: 15px;
        }

        .login-link a {
            color: #1E3A8A;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .result-msg {
            text-align: center;
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container register-container">
    <h2>Admin Registration</h2>

    <form:form modelAttribute="amsg">
        <table>
            <tr>
                <td><form:label path="aname">Admin Name:</form:label></td>
                <td><form:input path="aname" style="width:100%; padding:5px;"/></td>
            </tr>

            <tr>
                <td><form:label path="email">Email:</form:label></td>
                <td><form:input path="email" type="email" style="width:100%; padding:5px;"/></td>
            </tr>

            <tr>
                <td><form:label path="password">Password:</form:label></td>
                <td><form:password path="password" style="width:100%; padding:5px;"/></td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="Register"/>
                </td>
            </tr>
        </table>
    </form:form>

    <div class="result-msg">${resultMsg}</div>

    <div class="login-link">
        Already have an account? <a href="admin_login">Login here</a>
    </div>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
