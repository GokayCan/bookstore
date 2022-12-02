package BusinessLayer;

import DataAccess.Concretes.CityRepository;
import DataAccess.Entities.City;
import DataAccess.Entities.Publisher;
import java.util.ArrayList;

public class CityService{

    public ArrayList<City> List() {
        CityRepository cityRepository=new CityRepository();
        
        ArrayList<City> cities=cityRepository.getList();
        
        return cities;
    }
    
    public City getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(City entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(City entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
