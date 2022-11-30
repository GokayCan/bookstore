package DataAccess.Concretes;

import DataAccess.Abstractions.IEmployeeRepository;
import java.sql.Connection;

public class EmployeeRepository extends Repository implements IEmployeeRepository{

    public EmployeeRepository(Connection con) {
        super(con);
    }   
}
