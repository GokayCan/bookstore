package DataAccess.Concretes;

import DataAccess.Abstractions.IFineRepository;
import java.sql.Connection;

public class FineRepository extends Repository implements IFineRepository{

    public FineRepository(Connection con) {
        super(con);
    }  
}
