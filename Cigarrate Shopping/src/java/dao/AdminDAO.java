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
import model.Category;
import model.Users;

/**
 *
 * @author Administrator
 */
public class AdminDAO extends DBContext{

    public Users check(String user, String pass) {
        String sql = "select * from Users where users_name = ? and users_password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Users u = new Users(rs.getInt("users_id"),rs.getString("users_name"),rs.getString("users_password"),rs.getString("users_email"),rs.getString("users_phone"),rs.getString("users_address"),rs.getBoolean("users_role"));   
                return u;
            }
        } catch (Exception e) {
        }
        return null;
    }
     
}
