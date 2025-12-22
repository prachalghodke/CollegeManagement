<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/style.css"> <!-- Use the same style.css -->
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container">
    <h2 style="text-align:center; color:#1E3A8A;">Admin Login</h2>

    <form:form modelAttribute="amsg">
        <table align="center" border="1" cellpadding="8" style="border-collapse: collapse; margin-top:20px;">
            <tr>
                <td>Email:</td>
                <td><form:input path="email" style="width:100%; padding:5px;"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:password path="password" style="width:100%; padding:5px;"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Login" style="padding:5px 15px; background-color:#1E3A8A; color:white; border:none; cursor:pointer;"/>
                </td>
            </tr>
        </table>
    </form:form>

    <h4 style="text-align:center; color:green; margin-top:15px;">${resultMsg}</h4>

    <p style="text-align:center; margin-top:10px;">
        Don't have an account?
        <a href="admin_register" style="color:#1E3A8A;">Register here</a>
    </p>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
