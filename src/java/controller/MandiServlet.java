package controller;

import dao.MandiDAO;
import model.MandiPrice;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class MandiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        List<MandiPrice> prices = MandiDAO.getAllPrices();
        req.setAttribute("mandiList", prices);
        req.getRequestDispatcher("mandi.jsp").forward(req, res);
    }
}
