<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
   <c:when test="${!empty studentlists}">
   <h1 style="color: red;text-align: center;">Student Report</h1>
   <table border="1" align="center" bgcolor="cyan">
      <tr style="color: red;">
         <th>sid</th>
         <th>sname</th>
         <th>email</th>
        
        
      </tr>
      <c:forEach var="stud" items="${studentlists}">
         <tr style="color: blue;">
            <td>${stud.sid}</td>
            <td>${stud.sname}</td>
            <td>${stud.email}</td>
          
           
            <td><a href="sedit?no=${stud.sid}">Edit</a>
            <a href="sdelete?no=${stud.sid}" onclick=" return confirm('Do You Want to Delete')">Delete</a>
            <a href="assginmark?no=${stud.sid}">Assign Mark</a>
            <a href="viewmarks?sid=${stud.sid}">View Marks</a></td>
         </tr>
          
      </c:forEach>
   </table>  
   </c:when>
   <c:otherwise>
      <h1 style="color: red;text-align: center;">Student Not Found</h1>
   </c:otherwise>
</c:choose>

   <h1 style="color: red;text-align: center;">${resultMsg}</h1>

 <center>
    <h1> <a href="addstudent">Add Student</a>
       &nbsp;&nbsp;&nbsp;
      <a href="f_dashboard">Back to DashBoard</a>
   </h1>
 </center>
 
 <h1 style="color: red;text-align: center;" > <a href="./">home</a></h1>
 
 






