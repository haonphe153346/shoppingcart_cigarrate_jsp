/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShopControler;

import dao.CategoryDAO;
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
import model.Category;
import model.Product;

/**
 *
 * @author admin
 */
@WebServlet(name = "ShopServlet", urlPatterns = {"/shop"})
public class ShopServlet extends HttpServlet {

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
        DAO d = new DAO();
        CategoryDAO catedao = new CategoryDAO();
        
        //1. GET ALL CATEGORY 
        List<Category> list = catedao.GetAllCategory();
        request.setAttribute("category", list);

        //2. Get ALL PRODUCT + PAGGING
        int numPs, numperPage, numpage, start, end, page;
        List<Product> listproduct = d.GetAllProduct();
        numPs = listproduct.size();
        numperPage = 9;
        numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
        String tpage = request.getParameter("page");
        try {
            page = Integer.parseInt(tpage);
        } catch (NumberFormatException e) {
            page = 1;
        }
        start = (page - 1) * numperPage;
        if (page * numperPage > numPs) {
            end = numPs;
        } else {
            end = page * numperPage;
        }
        List<Product> listproduct1 = d.getListByPage(listproduct, start, end);
        request.setAttribute("product1", listproduct1);
        request.setAttribute("num", numpage);
        request.setAttribute("page", page);

        //3. SEARCH + PAGE
        String key = request.getParameter("key");
        if (key != null) {
            List<Product> listt = d.SearchProductByName(key);
            numPs = listt.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = d.getListByPage(listt, start, end);
            request.setAttribute("product1", listproduct1);
            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
        }

        //4. LIST FILTER CATEGORY + PAGE
        String cid_raw = request.getParameter("cid");
        if (cid_raw != null) {
            int cid = Integer.parseInt(cid_raw);
            List<Product> listtab = d.TabFilter(cid);
            int total_category = catedao.TotalCategory();

            numPs = listtab.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = d.getListByPage(listtab, start, end);
            request.setAttribute("cid", cid);
            request.setAttribute("product1", listproduct1);
            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
        }
        //5. Sort by + PAGE
        String sort_raw = request.getParameter("sort");
        if(sort_raw!=null){
            int sort = Integer.parseInt(sort_raw);
            List<Product> listsort = new ArrayList<>();
            if(sort==1){
                listsort = d.SortByPriceLowtoHigh();
            }else if(sort == 2){
                listsort = d.SortByPriceHightoLow();
            }
            numPs = listsort.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = d.getListByPage(listsort, start, end);
            request.setAttribute("sort", sort);
            request.setAttribute("product1", listproduct1);
            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
        }
        //6. Sort by + PAGE
        String bid_raw = request.getParameter("bid");
        if(bid_raw!=null){
            int bid = Integer.parseInt(bid_raw);
            List<Product> listbid = new ArrayList<>();
            if(bid==1){
                listbid = d.SearchProductByName("mond");
            }else if(bid == 2){
                listbid = d.SearchProductByName("africa");
            }else if(bid==3){
                listbid = d.SearchProductByName("raison");
            }else if(bid==4){
                listbid = d.SearchProductByName("chapman");
            }
            numPs = listbid.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = d.getListByPage(listbid, start, end);
            request.setAttribute("bid", bid);
            request.setAttribute("product1", listproduct1);
            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
        }
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
