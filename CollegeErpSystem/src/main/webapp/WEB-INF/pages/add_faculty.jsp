<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2 style="text-align:center; color:blue;">Add Faculty</h2>

<form:form modelAttribute="fmsg">
    <table align="center" border="1" cellpadding="8">
        <tr>
            <td>Faculty Name:</td>
            <td><form:input path="fname" /></td>
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
            <td>Subject:</td>
            <td><form:input path="subject" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Add Faculty"/>
            </td>
        </tr>
    </table>
</form:form>

<h3 style="text-align:center; color:green;">${msg}</h3>
