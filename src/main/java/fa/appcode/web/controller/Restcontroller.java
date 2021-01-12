package fa.appcode.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import fa.appcode.entities.Employee;
import fa.appcode.service.EmployeeService;

@RestController
public class Restcontroller {

  @Autowired
  private EmployeeService employeeService;

  @PostMapping(value = "/save")
  public Employee saveUser(@RequestBody Employee employee) throws Exception {

    return employeeService.save(employee);
  }

}
