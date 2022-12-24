package BusinessLayer;

import DataAccess.Concretes.BookTranslatorRepository;
import DataAccess.Entities.BookTranslator;

public class BookTranslatorService{

    private BookTranslatorRepository bookTranslatorRepository;
    
    public BookTranslatorService() {
        bookTranslatorRepository = new BookTranslatorRepository();
    }
    
    public void Add(BookTranslator entity) {    
        bookTranslatorRepository.Add(entity);
    }

    public void Delete(int ID) { 
        bookTranslatorRepository.Delete(ID);
    }
    
}
