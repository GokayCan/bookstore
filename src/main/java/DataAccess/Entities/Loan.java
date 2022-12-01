package DataAccess.Entities;
import java.util.Date;

public class Loan extends BaseEntity{

    private int UserID;
    private int EmployeeID;
    private int BookID;
    private Date LoanDate;
    private Date MaxReturnDate;
    private Date ReturnedDate;
    private boolean IsEnd;

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }
    
    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int EmployeeID) {
        this.EmployeeID = EmployeeID;
    }
    
    public int getBookID() {
        return BookID;
    }

    public void setBookID(int BookID) {
        this.BookID = BookID;
    }

    public Date getLoanDate() {
        return LoanDate;
    }

    public void setLoanDate(Date LoanDate) {
        this.LoanDate = LoanDate;
    }

    public Date getMaxReturnDate() {
        return MaxReturnDate;
    }

    public void setMaxReturnDate(Date MaxReturnDate) {
        this.MaxReturnDate = MaxReturnDate;
    }

    public Date getReturnedDate() {
        return ReturnedDate;
    }

    public void setReturnedDate(Date ReturnedDate) {
        this.ReturnedDate = ReturnedDate;
    }

    public boolean isIsEnd() {
        return IsEnd;
    }

    public void setIsEnd(boolean IsEnd) {
        this.IsEnd = IsEnd;
    }
    
    
}
