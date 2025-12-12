<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<h1 style="color: red;text-align: center;">Edit Employee Form Page</h1>

<frm:form modelAttribute="fact">

  <table border="1" bgcolor="cyan" align="center">
      <tr>
         <td>FacultyId</td>  
         <td><frm:input path="fid" readonly="true"/> </td>    
      </tr>
      
       <tr>
         <td>FacultyName</td>  
         <td><frm:input path="fname"/> </td>    
      </tr>
      
       <tr>
         <td>EMail</td>  
         <td><frm:input path="email"/> </td>    
      </tr>
      
       <tr>
         <td>Subject</td>  
         <td><frm:input path="subject"/> </td>    
      </tr>
     
      
       <tr>
         <td><input type="submit" value="update"></td>  
         <td><input type="reset" value="cancel"/> </td>    
      </tr>
      
      
  </table>

</frm:form>
