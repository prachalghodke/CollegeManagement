<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2 style="text-align:center; color:blue;">Add Faculty</h2>

<form:form modelAttribute="smsg">
    <table align="center" border="1" cellpadding="8">
        <tr>
            <td>Student Name:</td>
            <td><form:input path="sname" /></td>
        </tr>
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
                <input type="submit" value="Add Student"/>
            </td>
        </tr>
    </table>
</form:form>

<h3 style="text-align:center; color:green;">${msg}</h3>
