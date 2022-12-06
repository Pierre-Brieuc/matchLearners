<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>
    <link href="css/forms.css" rel="stylesheet" type="text/css">
  </head>
  <% String errorMessage = (String)request.getAttribute("ERROR"); %>
  <body>
    <div align="center">
      <h1>Veuillez vous identifier</h1>
    </div>
    <form method="POST" action="login-servlet">
      <table align="center">
        <tr>
          <td>Login :</td>
          <td><input type="text" name="j_username" required></td>
        </tr>
        <tr>
          <td>Mot de passe :</td>
          <td><input type="password" name="j_password" value="" minlength="4" required></td>
        </tr>
        <!-- ${ERROR}-->
        <%if (errorMessage != null){%>
        <p><%=errorMessage%></p>
        <%};%>
        <tr>
          <td colspan="2"><input type="submit" value="Login"></td>
        </tr>
      </table>
    </form>
    <center>
      <a href="registration-servlet">Registration ?</a>
    </center>
  </body>
</html>
