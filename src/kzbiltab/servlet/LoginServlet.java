package kzbiltab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kzbiltab.db.DBManager;
import kzbiltab.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet ("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean error = false;
        req.setAttribute("error", error);
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        List<User> users = DBManager.getUsers();

        boolean userEmailExists = users.stream().anyMatch(u -> u.getEmail().equals(email));

        if (userEmailExists) {
            User userFound = users.stream()
                    .filter(u -> u.getEmail().equals(email))
                    .findFirst()
                    .get();

            if (userFound.getPassword().equals(password)) {
                req.setAttribute("userName", userFound.getFullName());
                req.getRequestDispatcher("profile.jsp").forward(req, resp);
            }
            else {
                req.setAttribute("error", true);
            }
        }
        else {
            req.setAttribute("error", true);
        }

        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
