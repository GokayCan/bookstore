package DataAccess.Entities;

public class BookTranslator extends BaseEntity{
    
    private int BookID;
    private int TranslatorID;

    public int getBookID() {
        return BookID;
    }

    public void setBookID(int BookID) {
        this.BookID = BookID;
    }

    public int getTranslatorID() {
        return TranslatorID;
    }

    public void setTranslatorID(int TranslatorID) {
        this.TranslatorID = TranslatorID;
    }
    
    
}
