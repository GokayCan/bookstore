package BusinessLayer;

import DataAccess.Concretes.AuthorRepository;
import DataAccess.Concretes.EmployeeRepository;
import DataAccess.Entities.Author;
import DataAccess.Entities.Employee;
import java.util.ArrayList;

public class EmployeeService{

    public ArrayList<Employee> List() {
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        ArrayList<Employee> employees=employeeRepository.getList();
        
        return employees;
    }

    public Employee getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
