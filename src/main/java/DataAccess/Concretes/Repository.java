package DataAccess.Concretes;

import DataAccess.Abstractions.IRepository;
import DataAccess.Entities.BaseEntity;
import java.sql.Connection;
import java.util.ArrayList;

public class Repository implements IRepository{

    Connection con;
    public Repository(Connection con) {
        this.con = con;
    }
    
    @Override
    public ArrayList<BaseEntity> getList() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public BaseEntity getById() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void Add(BaseEntity entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void Update(BaseEntity entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
