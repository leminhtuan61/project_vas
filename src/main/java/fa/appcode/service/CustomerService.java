package fa.appcode.service;

import fa.appcode.entities.Customer;
import fa.appcode.exception.CustomerNotFoundException;

import java.util.List;

public interface CustomerService {

  Customer findCustomerById(int customerId);

  List<Customer> findAllCustomer();

  Customer getCustomerById(int id);

  boolean deleteCustomerById(int id) throws CustomerNotFoundException;

  boolean deleteCustomerById(List<Integer> customerId) throws Exception;

  Customer saveCustomer(Customer customer) throws Exception;

  List<Object[]> findReportCustomer() throws Exception;

  List<Object[]> findReportCustomerChar(int year) throws Exception;
}
