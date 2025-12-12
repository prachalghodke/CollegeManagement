<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<h1 style="color: red;text-align: center;">Edit Employee Form Page</h1>

<frm:form modelAttribute="stud">

  <table border="1" bgcolor="cyan" align="center">
      <tr>
         <td>StudentId</td>  
         <td><frm:input path="sid" readonly="true"/> </td>    
      </tr>
      
       <tr>
         <td>StudentName</td>  
         <td><frm:input path="sname"/> </td>    
      </tr>
      
       <tr>
         <td>EMail</td>  
         <td><frm:input path="email"/> </td>    
      </tr>
      
     
     
      
       <tr>
         <td><input type="submit" value="update"></td>  
         <td><input type="reset" value="cancel"/> </td>    
      </tr>
      
      
  </table>

</frm:form>
