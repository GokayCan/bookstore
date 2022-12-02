package DataAccess.Entities;

import java.util.Date;

public class Book  extends BaseEntity{
    
    private String Name;
    private int Stock;
    private boolean Enable;
    private int PublisherID;
    private String PublisherName;
    private Date PublishDate;
    private String PageNumber;
    private String PrintCount;
    private String ImageUrl;
    private String authors;
    private String categories;
    private String translators;

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public boolean getEnable() {
        return Enable;
    }

    public void setEnable(boolean Enable) {
        this.Enable = Enable;
    }

    public int getPublisherID() {
        return PublisherID;
    }

    public void setPublisherID(int PublisherID) {
        this.PublisherID = PublisherID;
    }

    public String getPublisherName() {
        return PublisherName;
    }

    public void setPublisherName(String PublisherName) {
        this.PublisherName = PublisherName;
    }
    
    

    public Date getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(Date PublishDate) {
        this.PublishDate = PublishDate;
    }

    public String getPageNumber() {
        return PageNumber;
    }

    public void setPageNumber(String PageNumber) {
        this.PageNumber = PageNumber;
    }

    public String getPrintCount() {
        return PrintCount;
    }

    public void setPrintCount(String PrintCount) {
        this.PrintCount = PrintCount;
    }

    public String getImageUrl() {
        return ImageUrl;
    }

    public void setImageUrl(String ImageUrl) {
        this.ImageUrl = ImageUrl;
    }

    public String getAuthors() {
        return authors;
    }

    public void setAuthors(String authors) {
        this.authors = authors;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public String getTranslators() {
        return translators;
    }

    public void setTranslators(String translators) {
        this.translators = translators;
    }
   

    
    
}
