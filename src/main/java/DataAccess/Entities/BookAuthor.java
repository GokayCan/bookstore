package DataAccess.Entities;

public class BookAuthor extends BaseEntity {
    
    private int BookID;
    private int AuthorID;

    public int getBookID() {
        return BookID;
    }

    public void setBookID(int BookID) {
        this.BookID = BookID;
    }

    public int getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(int AuthorID) {
        this.AuthorID = AuthorID;
    }
    
    
}
