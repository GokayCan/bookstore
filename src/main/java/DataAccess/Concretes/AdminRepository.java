package DataAccess.Concretes;

import DataAccess.Abstractions.IAdminRepository;
import java.sql.Connection;

public class AdminRepository extends Repository implements IAdminRepository{

    public AdminRepository(Connection con) {
        super(con);
    }   
}
