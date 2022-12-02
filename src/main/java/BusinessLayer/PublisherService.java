package BusinessLayer;

import DataAccess.Concretes.PublisherRepository;
import DataAccess.Entities.Publisher;
import DataAccess.Entities.Translator;
import java.util.ArrayList;

public class PublisherService {

    public ArrayList<Publisher> List() {
        PublisherRepository publisherRepository=new PublisherRepository();
        
        ArrayList<Publisher> publishers=publisherRepository.getList();
        
        return publishers;
    }

    public Publisher getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Add(Publisher entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Update(Publisher entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
