/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.Cart2;
import model.Category;
import model.DailyReport;
import model.GPD;
import model.Order;
import model.Product;
import model.Profit;

/**
 *
 * @author admin
 */
public class DAO extends DBContext {

    public List<Product> GetAllProduct() {
        String sql = "select p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,c.category_id,c.category_name\n"
                + "	 from Product p inner join Category c on (c.category_id = p.category_id)";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
     public List<Product> Top3Asc() {
        String sql = "select TOP 3 p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,c.category_id,c.category_name from Product p inner join Category c on (c.category_id = p.category_id) order by p.product_price asc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
public List<Product> Top3Desc() {
        String sql = "select TOP 3 p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,c.category_id,c.category_name from Product p inner join Category c on (c.category_id = p.category_id) order by p.product_price desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    public int CountProduct() {
        String sql = "select COUNT(*) as 'CountProduct' from Product";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getInt("CountProduct");
                return n;
            }
        } catch (SQLException e) {
        }
        return n;
    }
    public int ProfitAll() {
        String sql = "select SUM(total_money) as 'sumtt' from [Order]";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getInt("sumtt");
                return n;
            }
        } catch (SQLException e) {
        }
        return n;
    }

    public List<Product> Top4Product() {
        String sql = "select top 4 p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,c.category_id,c.category_name\n"
                + "         from Product p inner join Category c on (c.category_id = p.category_id) order by product_price desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> SearchProductByName(String key) {
        String sql = "SELECT * FROM [Product] WHERE product_name LIKE ?";
        List<Product> list = new ArrayList<>();
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + key + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> TabFilter(int cid) {
        String sql = "select * from Product where category_id = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> getListByPage(List<Product> list,
            int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void DeleteProduct(int id) {
        String sql = "DELETE FROM [Product]"
                + "      WHERE product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public Product getProductById(int id) {
        String sql = "select p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,p.category_id,c.category_name from Product p inner join Category c on (p.category_id = c.category_id)\n"
                + "                where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void update(Product p) {
        String sql = "Update Product set product_name = ?, product_price = ? , product_quanlity = ? , product_image = ?, category_id = ? where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setInt(2, p.getPrice());
            st.setInt(3, p.getQuanlity());
            st.setString(4, p.getImage());
            st.setInt(5, p.getCategory().getId());
            st.setInt(6, p.getId());
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public String GetNameCategoryByID(int id) {
        String sql = "select category_name from Category where category_id = ?";
        String n = "";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getString("category_name");
            }
        } catch (Exception e) {
        }
        return n;
    }

    public void add(Product p) {
        String sql = "insert into Product values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getId());
            st.setString(2, p.getName());
            st.setInt(3, p.getPrice());
            st.setInt(4, p.getQuanlity());
            st.setString(5, p.getImage());
            st.setInt(6, p.getCategory().getId());
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public List<Product> SortByPriceLowtoHigh() {
        String sql = "select p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,p.category_id,c.category_name from Product p inner join Category c on (p.category_id = c.category_id)\n"
                + "                order by p.product_price asc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Product> SortByPriceHightoLow() {
        String sql = "select p.product_id,p.product_name,p.product_price,p.product_quanlity,p.product_image,p.category_id,c.category_name from Product p inner join Category c on (p.category_id = c.category_id)\n"
                + "                order by p.product_price desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("product_price"), rs.getInt("product_quanlity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Profit> Get9daysProfit() {
        String sql = "select top 9 SUM(o.total_money) as'money', SUM(od.num) as'quanlity',o.[date] from Order_details od\n" +
"join [order] o \n" +
"on o.id = od.id\n" +
"group by o.date\n" +
"order by o.date";
        List<Profit> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Profit pro = new Profit(rs.getInt("money"), rs.getInt("quanlity"), rs.getDate("date"));
                list.add(pro);
            }
        } catch (SQLException e) {
        }
        return list;
    }
     public List<DailyReport> GetViewDaiLy() {
        String sql = "select top 30 * from DailyReport order by Date asc";
        List<DailyReport> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                DailyReport dr = new DailyReport(rs.getInt("non_customer"), rs.getInt("customer"), rs.getDate("Date"));
                list.add(dr);
            }
        } catch (SQLException e) {
        }
        return list;
    }
          public List<DailyReport> DailyDayView() {
        String sql = "select top 1 * from DailyReport";
        List<DailyReport> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                DailyReport dr = new DailyReport(rs.getInt("non_customer"), rs.getInt("customer"), rs.getDate("Date"));
                list.add(dr);
            }
        } catch (SQLException e) {
        }
        return list;
    }
     public List<GPD> GetAllGDP(){
         String sql = "select * from GDP";
        List<GPD> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                GPD gpd = new GPD(rs.getString("Country"), rs.getInt("NumberOfCases"), rs.getInt("Population"), rs.getInt("GDP"));
                list.add(gpd);
            }
        } catch (SQLException e) {
        }
        return list;
     }
     public static void main(String[] args) {
        DAO d = new DAO();
        List<GPD> b = d.GetAllGDP();
         System.out.println(b.get(0).getCountry());
    }
}
