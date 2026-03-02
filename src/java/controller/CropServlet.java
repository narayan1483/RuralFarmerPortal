package controller;

import dao.CropDAO;
import model.Crop;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class CropServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            // DAO se data fetch
            List<Crop> crops = CropDAO.getAllCrops();

            // JSP ko data bhejna
            req.setAttribute("cropList", crops);

            // crops.jsp pe forward
            req.getRequestDispatcher("crops.jsp").forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error in CropServlet: " + e.getMessage());
        }
    }
}
