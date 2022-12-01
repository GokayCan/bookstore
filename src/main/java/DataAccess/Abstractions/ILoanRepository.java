package DataAccess.Abstractions;

import DataAccess.Entities.Loan;
import java.util.ArrayList;

public interface ILoanRepository{
    public ArrayList<Loan> getList();

    public void Add(Loan entity);

    public void Update(Loan entity);

    public void Delete(int ID);

    public Loan getById(int ID);
}
