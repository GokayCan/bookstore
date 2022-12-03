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
        Publisher publisher=new Publisher();
        
        PublisherRepository publisherRepository=new PublisherRepository();
        
        publisher=publisherRepository.getById(ID);
        
        return publisher;
    }

    public void Add(Publisher entity) {
        PublisherRepository publisherRepository=new PublisherRepository();
        
        publisherRepository.Add(entity);
    }

    public void Update(Publisher entity) {
        PublisherRepository publisherRepository=new PublisherRepository();
        
        publisherRepository.Update(entity);
    }

    public void Delete(int ID) {
        PublisherRepository publisherRepository=new PublisherRepository();
        
        publisherRepository.Delete(ID);
    }
    
}
