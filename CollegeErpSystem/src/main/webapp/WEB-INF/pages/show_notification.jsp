<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="text-align:center;">Notifications</h1>

<c:forEach var="n" items="${notifList}">
    <div style="background:lightyellow; padding:10px; margin:10px; border:1px solid black;">
        <h3>${n.notifiydate}</h3>
        <p>${n.message}</p>
    </div>
</c:forEach>

<center>
    <a href="f_dashboard">Back to Dashboard</a>
</center>
