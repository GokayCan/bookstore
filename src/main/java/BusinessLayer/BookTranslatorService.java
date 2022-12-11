package BusinessLayer;

import DataAccess.Concretes.BookTranslatorRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.BookTranslator;
import java.util.ArrayList;

public class BookTranslatorService{

    public ArrayList<BaseEntity> List() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public BaseEntity getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(BookTranslator entity) {
        System.out.println(entity);
        BookTranslatorRepository bookTranslatorRepository=new BookTranslatorRepository();
        
        bookTranslatorRepository.Add(entity);
    }

    public void Update(BaseEntity entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        BookTranslatorRepository bookTranslatorRepository=new BookTranslatorRepository();
        
        bookTranslatorRepository.Delete(ID);
    }
    
}
