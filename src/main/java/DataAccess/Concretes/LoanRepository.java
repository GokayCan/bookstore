package DataAccess.Concretes;

import DataAccess.Abstractions.ILoanRepository;
import java.sql.Connection;

public class LoanRepository extends Repository implements ILoanRepository{

    public LoanRepository(Connection con) {
        super(con);
    }  
}
