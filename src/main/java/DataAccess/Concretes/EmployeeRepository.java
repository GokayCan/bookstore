package DataAccess.Concretes;

import DataAccess.Abstractions.IEmployeeRepository;
import DataAccess.Entities.Author;
import DataAccess.Entities.Employee;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class EmployeeRepository extends Repository implements IEmployeeRepository {

    public ArrayList<Employee> employees;
    public Employee employee;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public ArrayList<Employee> getList() {
        String query = "SELECT * From Employee";

        employees = new ArrayList<Employee>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {

                employee = new Employee();

                employee.setID(rs.getInt("ID"));
                employee.setFirstName(rs.getString("FirstName"));
                employee.setLastName(rs.getString("LastName"));
                employee.setStartDate(rs.getDate("StartDate"));
                employee.setEndDate(rs.getDate("EndDate"));

                employees.add(employee);
            }

            return employees;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public void Add(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Employee getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
