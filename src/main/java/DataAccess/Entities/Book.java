package DataAccess.Entities;

import java.util.Date;

public class Book  extends BaseEntity{
    
    private String Name;
    private int Stock;
    private boolean Enable;
    private int PublisherID;
    private Date PublishDate;
    private String PageNumber;
    private String PrintCount;
    private String ImageUrl;

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
    
    
}
