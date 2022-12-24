package BusinessLayer;

import DataAccess.Concretes.EmployeeRepository;
import DataAccess.Entities.Employee;
import java.util.ArrayList;

public class EmployeeService{
    
    private EmployeeRepository repo;
    
    public EmployeeService(){
        repo = new EmployeeRepository();
    }

    public ArrayList<Employee> List() {       
        ArrayList<Employee> employees = repo.getList();  
        return employees;
    }

    public Employee getByID(int ID) {
        Employee employee = new Employee();       
        employee=repo.getById(ID);     
        return employee;
    }

    public void Add(Employee entity) {     
        repo.Add(entity);
    }

    public void Update(Employee entity) {  
        repo.Update(entity);
    }

    public void Delete(int ID) {    
        repo.Delete(ID);
    }
    
    public Employee AccountExist(String tc, String password) {
        return repo.AccountExist(tc, password);
    }
}
