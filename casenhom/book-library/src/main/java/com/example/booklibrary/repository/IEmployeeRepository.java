package com.example.booklibrary.repository;

import com.example.booklibrary.model.Employee;
import com.example.booklibrary.dto.EmployeeDOT;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> listEmp();

    Boolean deleteEmployee(int id);
//    Boolean createEmployee(EmployeeDOT employeeDOT);
    List<Employee> searchByName(String name);
    Employee findById(int id);
    void updateEmployee(EmployeeDOT employeeDOT);
}
