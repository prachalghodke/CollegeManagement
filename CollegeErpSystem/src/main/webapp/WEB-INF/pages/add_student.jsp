<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="css/style.css"> <!-- Same CSS for consistency -->
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container">
    <h2 style="text-align:center; color:#1E3A8A;">Add Student</h2>

    <form:form modelAttribute="smsg">
        <table align="center" border="1" cellpadding="8" style="border-collapse: collapse; margin-top:20px;">
            <tr>
                <td>Student Name:</td>
                <td><form:input path="sname" style="width:100%; padding:5px;"/></td>
            </tr>
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
                    <input type="submit" value="Add Student" style="padding:5px 15px; background-color:#1E3A8A; color:white; border:none; cursor:pointer;"/>
                </td>
            </tr>
        </table>
    </form:form>

    <h3 style="text-align:center; color:green; margin-top:15px;">${msg}</h3>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
