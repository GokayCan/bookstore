package BusinessLayer;

import DataAccess.Entities.BaseEntity;
import java.util.ArrayList;

public interface IService {
    
    public ArrayList<BaseEntity> List();
    public BaseEntity getByID(int ID);
    public void Add(BaseEntity entity);
    public void Update(BaseEntity entity);
    public void Delete(int ID);

    
}
