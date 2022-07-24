 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CartController;

import dao.DAO;
import dao.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart2;
import model.Order;
import model.Users;

/**
 *
 * @author admin
 */
@WebServlet(name = "OrderServlet", urlPatterns = {"/order"})
public class OrderServlet extends HttpServlet {

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
            out.println("<title>Servlet OrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Map<Integer, Cart2> carts = (Map<Integer, Cart2>) session.getAttribute("carts");
        if (carts != null) {
            int totalPrice = 0;
            for (Map.Entry<Integer, Cart2> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart2 cart = entry.getValue();
                totalPrice += cart.getProduct().getPrice() * cart.getQuanlity();
            }
            session.setAttribute("carts", carts);
            session.setAttribute("total", totalPrice);
        }
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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

        HttpSession session = request.getSession(true);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");

        int a_id = 0;
        Users a = (Users) session.getAttribute("user");
        if (a != null) {
            a_id = a.getId();
        }
        Map<Integer, Cart2> carts = (Map<Integer, Cart2>) session.getAttribute("carts");
        if (carts != null) {
            int totalPrice = 0;
            for (Map.Entry<Integer, Cart2> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart2 cart = entry.getValue();
                totalPrice += cart.getProduct().getPrice() * cart.getQuanlity();
            }
            OrderDAO orderdao = new OrderDAO();
            Order order = new Order(name, a_id, email, phone, address, note, "0", totalPrice);
            int n = orderdao.CreateOrderAndReturnId(order);
//            System.out.println(n + "=========================");
            orderdao.SaveOrderDetail(n, carts);
            session.removeAttribute("carts");
            response.sendRedirect("shop");
        }

    }

    /**
     * private static int id = 1; private String fullname; private int users_id;
     * private String email; private String phone_number; private String
     * address; private String note; private String status; private date. /->
     * add sau private int total_money;
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
