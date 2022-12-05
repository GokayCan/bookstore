package BusinessLayer;

import DataAccess.Concretes.LoanRepository;
import DataAccess.Entities.Loan;
import java.util.ArrayList;

public class LoanService {
    
    LoanRepository repo;
    
    public LoanService(){
        repo = new LoanRepository();
    }

    public ArrayList<Loan> List() {
        return repo.getList();
    }

    public Loan getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Loan loan) {
        repo.Add(loan);
    }

    public void Update(Loan loan) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
