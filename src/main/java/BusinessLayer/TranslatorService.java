package BusinessLayer;
import DataAccess.Concretes.TranslatorRepository;
import DataAccess.Entities.Translator;
import java.util.ArrayList;

public class TranslatorService {

    private TranslatorRepository translatorRepository;
    
    public TranslatorService() {
        translatorRepository = new TranslatorRepository();
    }

    public ArrayList<Translator> List() {
        ArrayList<Translator> translators=translatorRepository.getList();  
        return translators;
    }

    public Translator getByID(int ID) {
        Translator translator=new Translator();
        translator=translatorRepository.getById(ID);
        
        return translator;
    }

    public void Add(Translator entity) {
        translatorRepository.Add(entity);
    }

    public void Update(Translator entity) {
        translatorRepository.Update(entity);
    }

    public void Delete(int ID) {
        translatorRepository.Delete(ID);
    }
    
}
