package DataAccess.Entities;
import java.util.Date;

public class Employee extends BaseEntity{
    
    private String FirstName;
    private String LastName;
    private String TCNo;
    private String Password;
    private String Document;
    private Date StartDate;
    private Date EndDate;

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getTCNo() {
        return TCNo;
    }

    public void setTCNo(String TCNo) {
        this.TCNo = TCNo;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getDocument() {
        return Document;
    }

    public void setDocument(String Document) {
        this.Document = Document;
    }

    public Date getStartDate() {
        return StartDate;
    }

    public void setStartDate(Date StartDate) {
        this.StartDate = StartDate;
    }

    public Date getEndDate() {
        return EndDate;
    }

    public void setEndDate(Date EndDate) {
        this.EndDate = EndDate;
    }
    
}
