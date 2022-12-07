//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.example.matchlearners;

import java.io.IOException;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet(
        name = "userControllerServlet",
        value = {"/user-controller-servlet"}
)
public class UserControllerServlet extends HttpServlet {
    private DataSource dataSource;
    private UserDBUtil userDBUtil;

    public UserControllerServlet() {
    }

    public void init() throws ServletException {
        super.init();

        try {
            this.dataSource = this.getDataSource();
            this.userDBUtil = new UserDBUtil(this.dataSource);
        } catch (NamingException var2) {
            var2.printStackTrace();
        }

    }

    private DataSource getDataSource() throws NamingException {
        String jndi = "java:comp/env/jdbc/matchLearners";
        Context context = new InitialContext();
        DataSource dataSource = (DataSource)context.lookup(jndi);
        return dataSource;
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String username = req.getParameter("username");
            req.setAttribute("name", username);
            System.out.println(req.getAttribute("id_user"));
            int user_id = Integer.parseInt(req.getParameter("id_user"));
            req.setAttribute("id_user", user_id);
            this.listPosts(req, resp);
        } catch (Exception var5) {
            var5.printStackTrace();
        }

    }

    private void listPosts(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Post> posts = this.userDBUtil.getPosts();
        request.setAttribute("POST_LIST", posts);
        String username = request.getParameter("username");
        int user_id = (int) request.getAttribute("id_user");
        request.setAttribute("id_user", user_id);
        request.setAttribute("name", username);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/user-page.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            System.out.println(req.getAttribute("id_user"));
            int user_id = (int) req.getAttribute("id_user");
            req.setAttribute("id_user", user_id);
            this.listPosts(req, resp);
        } catch (Exception var4) {
            var4.printStackTrace();
        }

    }
}
