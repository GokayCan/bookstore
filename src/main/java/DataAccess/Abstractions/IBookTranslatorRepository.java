package DataAccess.Abstractions;

import DataAccess.Entities.BookTranslator;

public interface IBookTranslatorRepository{

    public void Add(BookTranslator entity);

    public void Delete(int ID);

}
