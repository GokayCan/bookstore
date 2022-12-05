package DataAccess.Abstractions;

import DataAccess.Entities.Employee;
import java.util.ArrayList;

public interface IEmployeeRepository{
    //kiraladığı kitapları listeletebilirsin
    
    
    public ArrayList<Employee> getList();

    public void Add(Employee entity);

    public void Update(Employee entity);

    public void Delete(int ID);

    public Employee getById(int ID);
    
    public boolean IsAccountExist(String tc , String password);
    
}
