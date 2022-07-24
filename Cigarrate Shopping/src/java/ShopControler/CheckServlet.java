/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShopControler;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.Users;

/**
 *
 * @author admin
 */
@WebServlet(name = "CheckServlet", urlPatterns = {"/check"})
public class CheckServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        Users a = (Users) session.getAttribute("admin");
        if (a == null) {
            PrintWriter out = response.getWriter();
            out.println("Access denied");
        } else {
            if ((action.equals("list"))) {
                DAO d = new DAO();
                List<Product> list = d.GetAllProduct();
                request.setAttribute("listproduct", list);
                request.getRequestDispatcher("list.jsp").forward(request, response);
            }
//            if ((action.equals("add"))) {
//                request.getRequestDispatcher("add.jsp").forward(request, response);
//            }
//            if ((action.equals("delete-student"))) {
//                DAO d = new DAO();
//                String id = request.getParameter("id");
//                d.DeleteProduct(id);
//                request.getRequestDispatcher("list").forward(request, response);
//            }
//            if ((action.equals("update-student"))) {
//                String id = request.getParameter("id");
//                DAO d = new DAO();
//                Product s = d.getStudentById(id);
//                List<Product> list1 = new ArrayList<>();
//                list1.add(s);
//                request.setAttribute("list", list1);
//                request.getRequestDispatcher("update.jsp").
//                        forward(request, response);
//            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
