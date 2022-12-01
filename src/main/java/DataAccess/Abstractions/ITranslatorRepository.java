package DataAccess.Abstractions;

import DataAccess.Entities.Translator;
import java.util.ArrayList;

public interface ITranslatorRepository{
    
    public ArrayList<Translator> getList();

    public void Add(Translator entity);

    public void Update(Translator entity);

    public void Delete(int ID);

    public Translator getById(int ID);
    
}
