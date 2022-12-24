package BusinessLayer;

import DataAccess.Concretes.PublisherRepository;
import DataAccess.Entities.Publisher;
import java.util.ArrayList;

public class PublisherService {

    private PublisherRepository publisherRepository;
    
    public PublisherService() {
        publisherRepository = new PublisherRepository();
    }
    
    public ArrayList<Publisher> List() {
        ArrayList<Publisher> publishers = publisherRepository.getList();    
        return publishers;
    }

    public Publisher getByID(int ID) {
        Publisher publisher = new Publisher();
        publisher=publisherRepository.getById(ID);
        
        return publisher;
    }

    public void Add(Publisher entity) {
        publisherRepository.Add(entity);
    }

    public void Update(Publisher entity) {
        publisherRepository.Update(entity);
    }

    public void Delete(int ID) {
        publisherRepository.Delete(ID);
    }
    
}
