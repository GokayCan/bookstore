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
        Translator translator=new Translator();
        
        TranslatorRepository translatorRepository=new TranslatorRepository();
        
        translator=translatorRepository.getById(ID);
        
        return translator;
    }

    public void Add(Translator entity) {
        TranslatorRepository translatorRepository=new TranslatorRepository();
        
        translatorRepository.Add(entity);
    }

    public void Update(Translator entity) {
        TranslatorRepository translatorRepository=new TranslatorRepository();
        
        translatorRepository.Update(entity);
    }

    public void Delete(int ID) {
        TranslatorRepository translatorRepository=new TranslatorRepository();
        
        translatorRepository.Delete(ID);
    }
    
}
