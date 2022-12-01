package DataAccess.Abstractions;

import DataAccess.Entities.Fine;
import java.util.ArrayList;

public interface IFineRepository{
    
    public ArrayList<Fine> getList();

    public void Add(Fine entity);

    public void Update(Fine entity);

    public void Delete(int ID);

    public Fine getById(int ID);
    
}
