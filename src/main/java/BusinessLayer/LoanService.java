package BusinessLayer;

import DataAccess.Concretes.LoanRepository;
import DataAccess.Entities.Loan;

import java.util.ArrayList;

public class LoanService {

    LoanRepository repo;

    public LoanService() {
        repo = new LoanRepository();
    }

    public ArrayList<Loan> List() {

        return repo.getList();
    }

    public Loan getByID(int ID) {
        return repo.getById(ID);
    }

    public void Add(Loan loan) {
        repo.Add(loan);
    }

    public void Update(Loan loan) {
        repo.Update(loan);
    }

    public void Delete(int ID) {
        repo.Delete(ID);
    }

}
