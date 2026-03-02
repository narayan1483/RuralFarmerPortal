package controller;

import dao.FarmerDAO;
import model.Farmer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class EditProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Farmer farmer = (Farmer) session.getAttribute("farmer");

        String name = req.getParameter("name");
        String village = req.getParameter("village");

        boolean success = FarmerDAO.updateProfile(
                farmer.getId(), name, village);

        if (success) {
            farmer.setName(name);
            res.sendRedirect("profile.jsp");
        } else {
            res.getWriter().println("Update Failed!");
        }
    }
}