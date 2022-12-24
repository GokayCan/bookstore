package BusinessLayer;

import DataAccess.Concretes.CityRepository;
import DataAccess.Entities.City;
import java.util.ArrayList;

public class CityService{

    private CityRepository cityRepository;
    
    public CityService() {
        cityRepository = new CityRepository();
    }

    public ArrayList<City> List() {
        ArrayList<City> cities = cityRepository.getList();  
        return cities;
    }
    
    public City getByID(int ID) {
        City city=new City();
        city=cityRepository.getById(ID);
        return city;
    }

    public void Add(City entity) {
        cityRepository.Add(entity);
    }

    public void Update(City entity) {
        cityRepository.Update(entity);
    }

    public void Delete(int ID) {
        cityRepository.Delete(ID);
    }
    
    public String getByName(int ID) {
        String city = cityRepository.getByName(ID);
        return city;
    }
}
