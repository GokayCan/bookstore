package DataAccess.Entities;

public class BookCategory extends BaseEntity{
    
    private int BookID;
    private int CategoryID;

    public int getBookID() {
        return BookID;
    }

    public void setBookID(int BookID) {
        this.BookID = BookID;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }
    
}
