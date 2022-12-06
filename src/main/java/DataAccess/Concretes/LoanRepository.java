package DataAccess.Concretes;

import DataAccess.Abstractions.ILoanRepository;
import DataAccess.Entities.Loan;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;

public class LoanRepository extends Repository implements ILoanRepository{
    
    ArrayList<Loan> loans;
    Loan loan;
    ResultSet rs;
    Statement st;
    PreparedStatement pst;
 

    @Override
    public ArrayList<Loan> getList() {
        
        String query = "Select L.ID , L.UserID , CONCAT(U.FirstName, \" \" ,U.LastName) as User , " +
                        "L.BookID , B.Name , L.EmployeeID , CONCAT(E.FirstName, \" \" ,E.LastName) as Employee , "+ 
                        "L.LoanDate , L.MaxReturnDate , L.ReturnedDate , L.IsEnd from Loan L " +
                        "inner join Book B on L.BookID = B.ID " +
                        "inner join User U on L.UserID = U.ID " +
                        "inner join Employee E on L.EmployeeID = E.ID";
        loans = new ArrayList<Loan>();
        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()){
                loan = new Loan();
                loan.setID(rs.getInt("ID"));
                loan.setUserID(rs.getInt("UserID"));
                loan.setUser(rs.getString("User"));               
                loan.setEmployeeID(rs.getInt("EmployeeID"));
                loan.setEmployee(rs.getString("Employee")); 
                loan.setBookID(rs.getInt("BookID"));
                loan.setBook(rs.getString("B.Name"));
                loan.setLoanDate(rs.getDate("LoanDate"));
                loan.setMaxReturnDate(rs.getDate("MaxReturnDate"));
                loan.setReturnedDate(rs.getDate("ReturnedDate"));
                loan.setIsEnd(rs.getBoolean("IsEnd"));
                loans.add(loan);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return loans;
    }

    @Override
    public void Add(Loan loan) {
        String query = "INSERT INTO Loan (UserID,EmployeeID,BookID,LoanDate,MaxReturnDate,ReturnedDate,IsEnd) " +
                        "Values ('"+ loan.getUserID() +"' , '"+ loan.getEmployeeID() +"' , '"+ loan.getBookID() +"' , " +
                        "? , ? , '"+ null +"' , '"+ loan.getIsEnd()+"')";
        try {
            //DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
            //LocalDateTime now = LocalDateTime.now();
            //java.util.Date utilDate = new SimpleDateFormat("yyyy/MM/dd").parse(dtf.format(now));
            Calendar cal = Calendar.getInstance();
            java.util.Date utilDate1 = cal.getTime();
            java.sql.Date sqlDate1 = new java.sql.Date(utilDate1.getTime());
            cal.add(Calendar.MONTH, 6);
            java.util.Date utilDate2 = cal.getTime();
            java.sql.Date sqlDate2 = new java.sql.Date(utilDate2.getTime());
            
            pst = con.prepareStatement(query);
            pst.setDate(1,sqlDate1);
            pst.setDate(2,sqlDate2);
            st.execute(query);
        } catch (Exception ex) {
            ex.printStackTrace();
        }    
    }

    @Override
    public void Update(Loan loan) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Loan getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
