package BusinessLayer;
import DataAccess.Concretes.TranslatorRepository;
import DataAccess.Entities.Translator;
import java.util.ArrayList;

public class TranslatorService {

    public ArrayList<Translator> List() {
        TranslatorRepository translatorRepository=new TranslatorRepository();
        
        ArrayList<Translator> translators=translatorRepository.getList();
        
        return translators;
    }

    public Translator getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Add(Translator entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Update(Translator entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
