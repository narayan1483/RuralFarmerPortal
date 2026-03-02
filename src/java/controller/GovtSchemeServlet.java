package controller;

import dao.GovtSchemeDAO;
import model.GovtScheme;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class GovtSchemeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<GovtScheme> schemes =
            GovtSchemeDAO.getAllSchemes();

        request.setAttribute("schemes", schemes);
        RequestDispatcher rd =
            request.getRequestDispatcher("schemes.jsp");
        rd.forward(request, response);
    }
}
