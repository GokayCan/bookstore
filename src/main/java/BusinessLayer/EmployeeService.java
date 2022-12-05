package BusinessLayer;

import DataAccess.Concretes.EmployeeRepository;
import DataAccess.Entities.Employee;
import java.util.ArrayList;

public class EmployeeService{

    public ArrayList<Employee> List() {
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        ArrayList<Employee> employees=employeeRepository.getList();
        
        return employees;
    }

    public Employee getByID(int ID) {
        Employee employee=new Employee();
        
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        employee=employeeRepository.getById(ID);
        
        return employee;
    }

    public void Add(Employee entity) {
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        employeeRepository.Add(entity);
    }

    public void Update(Employee entity) {
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        employeeRepository.Update(entity);
    }

    public void Delete(int ID) {
        EmployeeRepository employeeRepository=new EmployeeRepository();
        
        employeeRepository.Delete(ID);
    }
    
}
