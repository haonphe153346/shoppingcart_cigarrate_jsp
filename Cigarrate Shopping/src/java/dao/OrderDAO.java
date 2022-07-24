/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Cart2;
import model.Order;
import model.Users;

/**
 *
 * @author admin
 */
public class OrderDAO extends DBContext {

    public int CreateOrderAndReturnId(Order order) {
        try {
            
            String sql = "INSERT INTO [Order]\n"
                    + "           ([fullname]\n"
                    + "           ,[account_id]\n"
                    + "           ,[phone_number]\n"
                    + "           ,[address]\n"
                    + "           ,[note]\n"
                    + "           ,[status]\n"
                    + "           ,[total_money]\n"
                    + "           ,[Date]\n"
                    + "           ,[email])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,GETDATE()\n"
                    + "           ,?)";
            PreparedStatement st = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(1, order.getFullname());
            st.setInt(2, 0);
            st.setString(3, order.getPhone_number());
            st.setString(4, order.getAddress());
            st.setString(5, order.getNote());
            st.setString(6, order.getStatus());
            st.setFloat(7, order.getTotal_money());
            st.setString(8, order.getEmail());
            
            st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }
    
    public void SaveOrderDetail(int orderid, Map<Integer, Cart2> carts) {
        try {
            String sql = "INSERT INTO [Order_Details]\n"
                    + "           ([order_id]\n"
                    + "           ,[product_id]\n"
                    + "           ,[price]\n"
                    + "           ,[num]\n"
                    + "           ,[total_number])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            /*PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getSkin().getSkinName());
                ps.setString(3, cart.getSkin().getSkinImg());
                ps.setDouble(4, cart.getSkin().getSkinPrice());
                ps.setInt(5, cart.getQuantity());
                ps.executeUpdate();
            }*/
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderid);            
            for (Map.Entry<Integer, Cart2> entry : carts.entrySet()) {
                Integer shoesId = entry.getKey();
                Cart2 cart = entry.getValue();
                ps.setInt(2, cart.getProduct().getId());
                ps.setFloat(3, cart.getProduct().getPrice());
                ps.setInt(4, cart.getQuanlity());
                ps.setFloat(5, cart.getQuanlity() * cart.getProduct().getPrice());
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public List<Order> GetAllOrder() {
        String sql = "select * from [Order]";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getInt("account_id"), rs.getString("email"), rs.getString("phone_number"), rs.getString("address"), rs.getString("note"), rs.getString("status"), rs.getInt("total_money"), rs.getDate("Date"));
                list.add(order);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Order> GetAllOrderByStatus(String status) {
        String sql = "select * from [Order] where status = ?";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getInt("account_id"), rs.getString("email"), rs.getString("phone_number"), rs.getString("address"), rs.getString("note"), rs.getString("status"), rs.getInt("total_money"), rs.getDate("Date"));
                list.add(order);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Order GetOrderByID(int id) {
        String sql = "select * from [Order] where ID = ?";
        Order order = new Order();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getInt("account_id"), rs.getString("email"), rs.getString("phone_number"), rs.getString("address"), rs.getString("note"), rs.getString("status"), rs.getInt("total_money"), rs.getDate("Date"));
                return order;
            }
        } catch (SQLException e) {
        }
        return null;
    }
 public int TotalOrder() {
        String sql = "select COUNT(*) as 'ttorder' from [Order]";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getInt("ttorder");
                return n;
            }
        } catch (SQLException e) {
        }
        return n;
    }
 public List<Order> GetOrderByIDUser(int id) {
        String sql = "select * from [Order] where account_id = ?";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order order = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getInt("account_id"), rs.getString("email"), rs.getString("phone_number"), rs.getString("address"), rs.getString("note"), rs.getString("status"), rs.getInt("total_money"), rs.getDate("Date"));
                list.add(order);
            }
        } catch (SQLException e) {
        }
        return list;
    }


        public void UpdateSetStatus(String status, int id) {
            String sql = "UPDATE [Order]\n"
                    + "   SET [status] = ?\n"
                    + " WHERE id = ?";
            try {
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, status);
                st.setInt(2, id);
                st.executeUpdate();
            } catch (Exception ex) {
            }
        }    
     public void DeleteOrder(int id) {
        String sql = "DELETE FROM [Order]\n" +
"      WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }    

    public static void main(String[] args) {
        OrderDAO orderdao = new OrderDAO();
        
        orderdao.SaveOrderDetail(1, null);
        
    }
}
