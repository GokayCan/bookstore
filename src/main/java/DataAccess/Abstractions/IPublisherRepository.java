package DataAccess.Abstractions;

import DataAccess.Entities.Publisher;
import java.util.ArrayList;

public interface IPublisherRepository{
    public ArrayList<Publisher> getList();

    public void Add(Publisher entity);

    public void Update(Publisher entity);

    public void Delete(int ID);

    public Publisher getById(int ID);
}
