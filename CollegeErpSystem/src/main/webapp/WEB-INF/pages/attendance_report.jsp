<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Attendance Report</h2>

<table border="1" cellpadding="10" bgcolor="lightyellow">
    <tr bgcolor="orange">
        <th>Attendance ID</th>
        <th>Student Name</th>
        <th>Date</th>
        <th>Status</th>
    </tr>

    <c:forEach var="a" items="${attendanceList}">
        <tr>
            <td>${a.aid}</td>
            <td>${a.student.sname}</td>
            <td>${a.attendance_date}</td>
            <td>${a.status}</td>
        </tr>
    </c:forEach>
</table>

<br>
<a href="f_dashboard">Back to Dashboard</a>
