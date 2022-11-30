package DataAccess.Concretes;

import DataAccess.Abstractions.IPublisherRepository;
import java.sql.Connection;

public class PublisherRepository extends Repository implements IPublisherRepository{

    public PublisherRepository(Connection con) {
        super(con);
    }  
}
