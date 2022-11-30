package DataAccess.Entities;

public class Category  extends BaseEntity{
    private String Name;

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
}
