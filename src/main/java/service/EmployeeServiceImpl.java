package service;

import entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.EmployeeRepository;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;

    public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @Override
    public List<Employee> retrieveEmployees() {
        List<Employee> employees = employeeRepository.findAll();
        return employees;
    }

    @Override
    public Employee getEmployee(Long employeeId) {
//       Employee employee = employeeRepository.findOne(employeeId);
//       return employee;
        return null;
    }

    @Override
    public Employee saveEmployee(Employee employee) {
        return null;
    }

    @Override
    public void deleteEmployee(Long employeeId) {

    }

    @Override
    public void updateEmployee(Employee employee) {

    }
}
