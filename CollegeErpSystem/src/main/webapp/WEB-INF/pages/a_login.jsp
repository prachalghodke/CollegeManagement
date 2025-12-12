<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2 style="text-align:center; color:blue;">Admin Login</h2>

<form:form modelAttribute="amsg">
    <table align="center" border="1" cellpadding="8">
        <tr>
            <td>Email:</td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Login"/>
            </td>
        </tr>
    </table>
</form:form>

<h4 style="text-align:center; color:green;">${resultMsg}</h4>

<p style="text-align:center;">
    Don't have an account?
    <a href="admin_register" style="color:blue;">Register here</a>
</p>
