package DataAccess.Concretes;

import DataAccess.Abstractions.ICityRepository;
import java.sql.Connection;

public class CityRepository extends Repository implements ICityRepository{

    public CityRepository(Connection con) {
        super(con);
    }
}
