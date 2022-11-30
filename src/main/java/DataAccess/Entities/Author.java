package DataAccess.Entities;
import java.util.Date;

public class Author extends BaseEntity{
    
    private String FirstName;
    private String LastName;
    private Date BirthDate;
    private String Biography;

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

    public Date getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(Date BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getBiography() {
        return Biography;
    }

    public void setBiography(String Biography) {
        this.Biography = Biography;
    }
}
