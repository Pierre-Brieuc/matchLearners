<%--
  Created by IntelliJ IDEA.
  User: PierreB
  Date: 29/11/2022
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>${name}/Create</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <% String errorMessage = (String)request.getAttribute("ERROR"); %>

    <body>
    <center>
        <div>
            <h1>Create your post</h1>
        </div>
        <form method="POST" action="create-post-servlet">
            <input type="hidden" name="name" value="${name}">
            <input type="hidden" name="idConnectedUser" value="${idConnectedUser}"/>

            <table align="center">
                <tr>
                    <td>Description :</td>
                    <td><input type="text" name="description" value=""></td>
                </tr>
                <!-- ${ERROR}-->
                <%if (errorMessage != null){%>
                <p><%=errorMessage%></p>
                <%};%>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                    <td><input type="reset" value="Cancel"></td>
                </tr>
            </table>
        </form>
        <form action="user-controller-servlet" method="get">
            <input type="hidden" name="name" value="${name}">
            <input type="hidden" name="idConnectedUser" value="${idConnectedUser}"/>
            <input type="submit" value="Back">
        </form>
    </center>
        <div id="create">
            <h3 class="text-center text-white pt-5">Edit</h3>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <!-- ${ERROR}-->
                            <%if (errorMessage != null){%>
                            <p><%=errorMessage%></p>
                            <%};%>
                            <form id="create-form" class="form" action="create-post-servlet" method="post">
                                <input type="hidden" name="name" value="${name}">
                                <input type="hidden" name="idConnectedUser" value="${idConnectedUser}"/>
                                <h3 class="text-center text-info">Create</h3>
                                <div class="form-group">
                                    <label for="title" class="text-info">Title :</label><br>
                                    <input type="text" name="title" id="title" class="form-control" value="${title}" required>
                                </div>
                                <div class="form-group">
                                    <label for="description" class="text-info">Description :</label><br>
                                    <input type="text" name="description" id="description" class="form-control" value="${description}" required>
                                </div>
                                <div class="form-group">
                                    <center><input type="submit" name="submit" class="btn btn-info btn-md mt-2" value="submit"></center>
                                </div>
                            </form>
                            <form action="user-controller-servlet" method="get">
                                <input type="hidden" name="name" value="${name}">
                                <input type="hidden" name="idConnectedUser" value="${idConnectedUser}"/>
                                <input type="submit" value="Back">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
