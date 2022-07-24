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
import model.Users;

/**
 *
 * @author admin
 */
public class UsersDAO extends DBContext {

    public List<Users> GetAllUser() {
        String sql = "select * from [Users]";
        List<Users> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users user = new Users(rs.getInt("users_id"), rs.getString("users_name"), rs.getString("users_password"), rs.getString("users_email"), rs.getString("users_phone"), rs.getString("users_address"), rs.getBoolean("users_role"));
                list.add(user);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Users GetUserById(int id) {
        String sql = "select * from Users where users_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users user = new Users(rs.getInt("users_id"), rs.getString("users_name"), rs.getString("users_password"), rs.getString("users_email"), rs.getString("users_phone"), rs.getString("users_address"), rs.getBoolean("users_role"));
                return user;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void UpdateUser(Users u) {
        String sql = "UPDATE [Users]\n"
                + "   SET [users_name] = ?\n"
                + "      ,[users_password] = ?\n"
                + "      ,[users_email] = ?\n"
                + "      ,[users_phone] = ?\n"
                + "      ,[users_address] = ?\n"
                + " WHERE [users_id] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getName());
            st.setString(2, u.getPassword());
            st.setString(3, u.getEmail());
            st.setString(4, u.getPhone());
            st.setString(5, u.getAddress());
            st.setInt(6, u.getId());
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }
}
