package DataAccess.Abstractions;

import DataAccess.Entities.BookTranslator;
import java.util.ArrayList;

public interface IBookTranslatorRepository{
    public ArrayList<BookTranslator> getList();

    public void Add(BookTranslator entity);

    public void Update(BookTranslator entity);

    public void Delete(int ID);

    public BookTranslator getById(int ID);
}
