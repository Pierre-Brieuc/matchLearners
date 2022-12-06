<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.matchlearners.Post" %>
<%--
  Created by IntelliJ IDEA.
  User: PierreB
  Date: 27/11/2022
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>${name}</title>
        <link href="css/instructor.css" type="text/css" rel="stylesheet">
    </head>
    <% List<Post> theposts = (List<Post>)request.getAttribute("POST_LIST"); %>
    <% int user_id = (int)request.getAttribute("user_id");%>
    <body>
        <center>
            <div class="titre">
                <span class="titre1">Bonjour ${name}</span>
            </div>

            <div class="logout">
                <form action="logout-servlet" method="get">
                    <input type="submit" value="Log out"/>
                </form>
            </div>

            <div id="container">
                <div id="content">
                    <table>
                        <c:forEach var="tempPost" items="${POST_LIST}" >
                        <%for (int i=0;i<theposts.size();i++){%>
                            <tr>
                                <form>
                                    <input type="hidden" name="name" value="${name}">
                                    <td><input type="hidden" class="input-instructor" name="id" value="${tempPost.idPost}"/></td>

                                    <td><input type="hidden" class="input-instructor" name="title" value="${tempPost.title}"/><center>${tempPost.title}</center></td>

                                    <td><input type="hidden" class="description1" name="description" value="${tempPost.description}"/><center>${tempPost.description}</center></td>

                                    <td><input type="hidden" class="description1" name="idUser" value="${tempPost.idUser}"/><center>${tempPost.idUser}</center></td>
                                    <%if (theposts.get(i).getIdUser() == user_id)%>
                                        <td colspan="2"><input type="submit" class="edit" value="Edit" formmethod="get" formaction="edit-todo-servlet"></td>
                                        <td><input type="submit" class="delete" value="Delete" formmethod="post" formaction="delete-todo-servlet"></td>
                                    <%};%>
                                </form>
                            </tr>
                        <%};%>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <form action="create-todo-servlet">
                <input type="hidden" name="name" value="${name}">
                <input class="newtodo" type="submit" value="create new todo" formmethod="get"/>
            </form>
        </center>
    </body>
</html>
