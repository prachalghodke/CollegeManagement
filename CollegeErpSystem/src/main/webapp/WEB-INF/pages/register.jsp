<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2 style="text-align:center; color:blue;">Admin Registration</h2>

<form:form modelAttribute="amsg">

  <table align="center" cellpadding="10">
    <tr>
      <td><form:label path="aname">Admin Name:</form:label></td>
      <td><form:input path="aname" /></td>
    </tr>

    <tr>
      <td><form:label path="email">Email:</form:label></td>
      <td><form:input path="email" type="email" /></td>
    </tr>

    <tr>
      <td><form:label path="password">Password:</form:label></td>
      <td><form:password path="password" /></td>
    </tr>

    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="Register" />
      </td>
    </tr>
  </table>

</form:form>

<h3 style="color: red;text-align: center;"> ${resultMsg} </h3>

<h4 style="text-align:center;">
  <a href="admin_login">Already have an account? Login here</a>
</h4>
