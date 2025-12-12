<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
   <c:when test="${!empty facultylists}">
   <h1 style="color: red;text-align: center;">Employees Report</h1>
   <table border="1" align="center" bgcolor="cyan">
      <tr style="color: red;">
         <th>fid</th>
         <th>fname</th>
         <th>email</th>
         <th>subject</th>
        
      </tr>
      <c:forEach var="fact" items="${facultylists}">
         <tr style="color: blue;">
            <td>${fact.fid}</td>
            <td>${fact.fname}</td>
            <td>${fact.email}</td>
            <td>${fact.subject}</td>
           
            <td><a href="edit?no=${fact.fid}">Edit</a>
            <a href="delete?no=${fact.fid}" onclick=" return confirm('Do You Want to Delete')">Delete</a></td>
         </tr>
          
      </c:forEach>
   </table>  
   </c:when>
   <c:otherwise>
      <h1 style="color: red;text-align: center;">Faculty Not Found</h1>
   </c:otherwise>
</c:choose>

   <h1 style="color: red;text-align: center;">${resultMsg}</h1>

 <center>
    <h1> <a href="addfaculty">Add faculty</a>
       &nbsp;&nbsp;&nbsp;
      <a href="a_dashboard">Back to DashBoard</a>
   </h1>
 </center>
 
 <h1 style="color: red;text-align: center;" > <a href="./">home</a></h1>
 
 






