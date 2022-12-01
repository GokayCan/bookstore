package DataAccess.Entities;

public abstract class BaseEntity {
    private int ID;
    
    public int getID(){
        return ID;
    }
    
    public void setID(int ID){
        this.ID=ID;
    }
}
