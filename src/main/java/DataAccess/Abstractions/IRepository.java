package DataAccess.Abstractions;

import DataAccess.Entities.BaseEntity;
import java.util.ArrayList;

public interface IRepository {
    
    public ArrayList<BaseEntity> getList();
    public BaseEntity getById(int ID);
    public void Add(BaseEntity entity);
    public void Update(BaseEntity entity);
    public void Delete(int ID);

}