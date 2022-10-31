/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Db;

import java.sql.*;
import Entities.User;

/**
 *
 * @author gokay
 */
public class Registration {

    String url = "jdbc:mysql://app.sobiad.com:3306/grup1?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
    String uname = "grup1";
    String pass = "grup1";
    String addurl = "insert into User (username,password,registrationdate) values(?,?,?)";

    public boolean AddUser(User usr) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, uname, pass);
            if (!con.isClosed()) {
                System.out.println("Baglanti basarili");
                
                PreparedStatement st = con.prepareStatement(addurl);
                
                st.setString(1, usr.getUsername());
                st.setString(2, usr.getPassword());
                st.setString(3, usr.getStringRegistrationDate());
                int updateQuery = st.executeUpdate();
                if (updateQuery > 0){
                    System.out.println("Basarili Ekleme");
                    return true;
                }
                else{
                    System.out.println("Basarisiz Ekleme");
                    return false;
                }
            }else {
                System.out.println("Baglanti basarisiz");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
