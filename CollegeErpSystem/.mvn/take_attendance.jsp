<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 style="text-align:center;">Take Attendance</h2>

<form action="saveattendance" method="post">

<table border="1" align="center" cellpadding="10">
<tr>
    <th>SID</th>
    <th>Name</th>
    <th>Status</th>
</tr>

<c:forEach var="stud" items="${students}">
<tr>
    <td>${stud.sid}</td>
    <td>${stud.sname}</td>

    <td>
        Present:
        <input type="radio" name="status_${stud.sid}" value="Present" required />

        Absent:
        <input type="radio" name="status_${stud.sid}" value="Absent" required />
    </td>
</tr>
</c:forEach>

</table>

<br><center>
    <input type="submit" value="Save Attendance">
</center>

</form>

<h3 style="color:green; text-align:center;">${msg}</h3>
