/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author toanl
 */
public class AccountDAO extends DBContext{
    public Account getAccount(String user,String pass){
        try {
            String sql = "select user1,pass,role from Account";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                if(rs.getString("user1").equals(user)&&rs.getString("pass").equals(pass)){
                Account a=new Account();
                a.setUser(rs.getString("user1"));
                a.setPass(rs.getString("pass"));
                a.setRole(rs.getString("role"));
                return a;
                }
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
return null;
    }
    
    
}
