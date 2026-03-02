package controller;

import dao.FarmerDAO;
import model.Farmer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class ChangePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Farmer farmer = (Farmer) session.getAttribute("farmer");

        String oldPass = req.getParameter("oldPassword");
        String newPass = req.getParameter("newPassword");

        boolean success = FarmerDAO.changePassword(
                farmer.getId(), oldPass, newPass);

        if (success) {
            res.sendRedirect("profile.jsp");
        } else {
            res.getWriter().println("Old Password Incorrect!");
        }
    }
}