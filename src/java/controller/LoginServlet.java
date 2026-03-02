package controller;

import dao.FarmerDAO;
import model.Farmer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");

        Farmer farmer = FarmerDAO.login(mobile, password);

        if (farmer != null) {
            HttpSession session = req.getSession();
            session.setAttribute("farmer", farmer);

            res.sendRedirect("dashboard.jsp");
        } else {
            req.setAttribute("error", "Invalid Mobile or Password");
            req.getRequestDispatcher("login.jsp").forward(req, res);
        }
    }
}
