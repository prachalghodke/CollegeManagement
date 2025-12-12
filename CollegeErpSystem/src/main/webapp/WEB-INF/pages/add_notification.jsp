<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2 style="text-align:center;">Add Notification</h2>

<form:form modelAttribute="note">
    <table align="center" border="1" cellpadding="8">
        <tr>
            <td>Message:</td>
            <td><form:input path="message" /></td>
        </tr>
        <tr>
            <td>Date:</td>
            <td><form:input path="notifiydate" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Add" />
            </td>
        </tr>
    </table>
</form:form>

<h3 style="color:green;text-align:center;">${resultMsg}</h3>
