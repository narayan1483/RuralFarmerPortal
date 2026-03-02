package controller;

import dao.FarmerDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String mobile = req.getParameter("mobile");
        String village = req.getParameter("village");
        String password = req.getParameter("password");

        boolean success = FarmerDAO.register(name, mobile, village, password);

        if (success) {
            res.sendRedirect("login.jsp");
        } else {
            req.setAttribute("error", "Mobile already registered!");
            req.getRequestDispatcher("register.jsp").forward(req, res);
        }
    }
}
