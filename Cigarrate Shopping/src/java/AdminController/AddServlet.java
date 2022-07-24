
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import dao.CategoryDAO;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;
import model.Product;
import model.Users;

/**
 *
 * @author admin
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
public class AddServlet extends HttpServlet {

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
        HttpSession session = request.getSession(true);
        Users a = (Users) session.getAttribute("admin");
        if (a == null){
            PrintWriter out = response.getWriter();
            out.println("Access denied");
        }else{
        DAO d = new DAO();
        CategoryDAO catedao = new CategoryDAO();
        List<Category> listcate = catedao.GetAllCategory();
        request.setAttribute("listcate", listcate);
        request.getRequestDispatcher("add.jsp").forward(request, response);
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
        String id_raw = request.getParameter("id");
        String name = request.getParameter("name");
        String price_raw = request.getParameter("price");
        String quanlity_raw = request.getParameter("quanlity");
        String image = request.getParameter("image");
        String category_raw = request.getParameter("cate");

        DAO d = new DAO();
        try {
            int id = Integer.parseInt(id_raw);
            int price = Integer.parseInt(price_raw);
            int quanlity = Integer.parseInt(quanlity_raw);
            int category = Integer.parseInt(category_raw);

            Product p = d.getProductById(id);
            if (p != null) {
                String ms = "ID: " + id + " is existed ! Please try again !";
                request.setAttribute("error", ms);
                request.getRequestDispatcher("add.jsp").forward(request, response);
            } else {
                Category c = new Category(category,d.GetNameCategoryByID(category));
                Product p1 = new Product(id, name, price, quanlity, image, c);
                d.add(p1);
                response.sendRedirect("list");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
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
