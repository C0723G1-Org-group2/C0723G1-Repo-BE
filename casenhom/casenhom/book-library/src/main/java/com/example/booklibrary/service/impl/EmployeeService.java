package com.example.booklibrary.service.impl;

import com.example.booklibrary.model.Employee;
import com.example.booklibrary.dto.EmployeeDOT;
import com.example.booklibrary.repository.impl.EmployeeRepository;
import com.example.booklibrary.repository.IEmployeeRepository;
import com.example.booklibrary.service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private final IEmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public List<Employee> listEmp() {
        return employeeRepository.listEmp();
    }

    @Override
    public Boolean deleteEmployee(int id) {
        return employeeRepository.deleteEmployee(id);
    }

//    @Override
//    public Boolean createEmployee(EmployeeDOT employeeDOT) {
//        return employeeRepository.createEmployee(employeeDOT);
//    }

    @Override
    public List<Employee> searchByName(String name) {
        return employeeRepository.searchByName(name);
    }

    @Override
    public Employee findById(int id) {
        return employeeRepository.findById(id);
    }

    @Override
    public void updateEmployee(EmployeeDOT employeeDOT) {
        employeeRepository.updateEmployee(employeeDOT);
    }
}
