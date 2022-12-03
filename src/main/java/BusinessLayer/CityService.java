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
        City city=new City();
        
        CityRepository cityRepository=new CityRepository();
        
        city=cityRepository.getById(ID);
        
        return city;
    }

    public void Add(City entity) {
        CityRepository cityRepository=new CityRepository();
        
        cityRepository.Add(entity);
    }

    public void Update(City entity) {
        CityRepository cityRepository=new CityRepository();
        
        cityRepository.Update(entity);
    }

    public void Delete(int ID) {
        CityRepository cityRepository=new CityRepository();
        
        cityRepository.Delete(ID);
    }
    
}
