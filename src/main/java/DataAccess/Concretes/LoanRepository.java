package DataAccess.Concretes;

import DataAccess.Abstractions.ILoanRepository;
import DataAccess.Entities.Loan;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                        "'"+ loan.getLoanDate()+"' , '"+ loan.getMaxReturnDate()+"' , '"+ loan.getReturnedDate()+"' , '"+ loan.getIsEnd()+"')";
        try {
            st = con.createStatement();
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
