package Entities;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.*;

/**
 *
 * @author gokay
 */
public class User {
    int UserId;
    String Username;
    String Password;
    Date RegistrationDate;
    
    public User(){
        
    }
    
    public User(String uname , String pass , Date RegDate){
        this.Username = uname;
        this.Password = pass;
        this.RegistrationDate = RegDate;
    }
    
    public Date getRegistrationDate() {
        return RegistrationDate;
    }

    public void setRegistrationDate() {
        this.RegistrationDate = RegistrationDate;
    }
    
    public String getStringRegistrationDate(){
        DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String strDate = dateformat.format(RegistrationDate);
        return strDate;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
}
