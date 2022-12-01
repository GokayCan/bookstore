package DataAccess.Abstractions;

import DataAccess.Entities.City;
import java.util.ArrayList;

public interface ICityRepository{
    public ArrayList<City> getList();

    public void Add(City entity);

    public void Update(City entity);

    public void Delete(int ID);

    public City getById(int ID);
}
