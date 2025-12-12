<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Marks Report for: ${student.sname}</h2>

<c:choose>
    <c:when test="${!empty marksList}">
        <table border="1" align="center">
            <tr>
                <th>Exam Type</th>
                <th>Marks</th>
            </tr>

            <c:forEach var="m" items="${marksList}">
                <tr>
                    <td>${m.examtype}</td>
                    <td>${m.marks}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <c:otherwise>
        <h3>No Marks Found</h3>
    </c:otherwise>
</c:choose>

<br>
<a href="studentreport">Back to Student Report</a>
