<%--
  Created by IntelliJ IDEA.
  User: PierreB
  Date: 26/11/2022
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Registration</title>
        <link href="css/forms.css" rel="stylesheet" type="text/css">
    </head>

    <% String errorMessage = (String)request.getAttribute("ERROR"); %>

    <body>
        <div align="center">
            <h1>Veuillez vous identifier</h1>
        </div>
        <form method="POST" action="registration-servlet">
            <table align="center">
                <tr>
                    <td>Username :</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td><input type="password" name="password" value="" minlength="4" required></td>
                </tr>
                <tr>
                    <td>Mot de passe :</td>
                    <td><input type="email" name="email" value="" minlength="4" required></td>
                </tr>
                <%if (errorMessage != null){%>
                <p id="error"><%=errorMessage%></p>
                <%};%>
                <tr>
                    <td colspan="2"><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
        <center>
            <a href="login-servlet">Login ?</a>
        </center>
    </body>
</html>
