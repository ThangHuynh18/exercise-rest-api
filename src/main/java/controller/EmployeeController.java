package controller;

import entity.Employee;
import exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import repository.EmployeeRepository;
import service.EmployeeService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {
    @Autowired
    private EmployeeRepository employeeRepository;
    //private EmployeeService employeeService;

    //get employee
    @GetMapping("")
    public List<Employee> getAllEmployee(){
//        List<Employee> employees = employeeService.retrieveEmployees();
//        return employees;
        return this.employeeRepository.findAll();
    }

    //get employee by id
    @GetMapping("/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable(value = "id") Long employeeId)
        throws ResourceNotFoundException {
        Employee employee = employeeRepository.findById(employeeId).orElseThrow(() -> new ResourceNotFoundException("employee not found for this id: " +employeeId));
        return ResponseEntity.ok().body(employee);
    }

    //save employee
    @PostMapping("/employee")
    public Employee createEmployee(@RequestBody Employee employee){
        return this.employeeRepository.save(employee);
    }

    //update
    @PutMapping("/employee/{id}")
    public ResponseEntity<Employee> updateEmployee(@PathVariable(value = "id") Long employeeId,
                                                   @RequestBody Employee employeeDetail) throws ResourceNotFoundException{
        Employee employee = employeeRepository.findById(employeeId).orElseThrow(() -> new ResourceNotFoundException("employee not found for this id: " +employeeId));

        employee.setEmail(employeeDetail.getEmail());
        employee.setFirstName(employeeDetail.getFirstName());
        employee.setLastName(employeeDetail.getLastName());
        employee.setRole(employeeDetail.getRole());

        return ResponseEntity.ok(this.employeeRepository.save(employee));
    }

    //delete
    @DeleteMapping("/employee/{id}")
    public Map<String, Boolean> deleteEmployee(@PathVariable(value = "id") Long employeeId)
            throws ResourceNotFoundException {
        Employee employee = employeeRepository.findById(employeeId).orElseThrow(() -> new ResourceNotFoundException("employee not found for this id: " + employeeId));
        this.employeeRepository.delete(employee);

        Map<String, Boolean> reponse = new HashMap<>();
        reponse.put("deleted", Boolean.TRUE);

        return reponse;
    }
}
