/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import dao.CategoryDAO;
import dao.DAO;
import dao.OrderDAO;
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
import model.Category;
import model.DailyReport;
import model.Product;
import model.Profit;
import model.Users;

/**
 *
 * @author admin
 */
@WebServlet(name = "DashBoardServlet", urlPatterns = {"/dashboard"})
public class DashBoardServlet extends HttpServlet {

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
            out.println("<title>Servlet DashBoardServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashBoardServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(true);
        Users a = (Users) session.getAttribute("admin");
        if (a == null){
            PrintWriter out = response.getWriter();
            out.println("Access denied");
        }else{
        CategoryDAO categorydao = new CategoryDAO();
        DAO d = new DAO();
        List<Product> listp = d.GetAllProduct();
        List<Category> listcate = categorydao.GetAllCategory();
        
        
        //Option: Chart for category
        int n = categorydao.TotalCategory();
        List<Integer> ttcate = new ArrayList<>();
        for (int i = 1; i <= n ; i++) {
                int tt = categorydao.QuantityCategory(i); 
                ttcate.add(tt);
        }
        request.setAttribute("listquantitycate", ttcate);
        //Option: Profit chart
        List<Profit> profit = d.Get9daysProfit();
        request.setAttribute("profit", profit);
        //Option: View Chart
        List<DailyReport> daily = d.GetViewDaiLy();
        request.setAttribute("daily", daily);
        
        //ProfitAll
        List<Integer> profitall = new ArrayList<>();
        int x = d.ProfitAll();
        profitall.add(x);   
        request.setAttribute("ttprofit", profitall);
        
        //Daily View
        List<DailyReport> dayview = d.DailyDayView();
        request.setAttribute("dayview", dayview);
        //Total Order
        OrderDAO ordao = new OrderDAO();
        List<Integer> ttorder = new ArrayList<>();
            int ttod = ordao.TotalOrder();
            ttorder.add(ttod);
            request.setAttribute("ttorder", ttorder);
        //Top 4 Products:
        List<Product> top4 = d.Top4Product();
        request.setAttribute("top4", top4);
        
        //Total Product
        int totalproduct = d.CountProduct();
        request.setAttribute("totalproduct", totalproduct);
        
        
        request.setAttribute("listp", listp);
        request.setAttribute("listcate", listcate);
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
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
