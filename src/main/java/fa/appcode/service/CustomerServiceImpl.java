package fa.appcode.service;

import fa.appcode.entities.Customer;
import fa.appcode.exception.CustomerNotFoundException;
import fa.appcode.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

  @Autowired
  private CustomerRepository customerRepository;

  @Override
  public Customer findCustomerById(int customerId) {
    return customerRepository.findCustomerByCustomerId(customerId);
  }

  @Override
  public List<Customer> findAllCustomer() {
    return customerRepository.findAll();
  }

  @Override
  public Customer getCustomerById(int id) {

    return customerRepository.findById(id)
        .orElseThrow(() -> new CustomerNotFoundException(
            "Not found Customer contain id" + id, "500"));
  }

  @Override
  public boolean deleteCustomerById(int id) throws CustomerNotFoundException {
    if (customerRepository.existsById(id)) {
      customerRepository.deleteById(id);
      return true;
    } else {
      return false;
    }

  }

  @Override
  public boolean deleteCustomerById(List<Integer> customerId) throws Exception {
    for (Integer id : customerId) {
      if (customerRepository.existsById(id)) {
        return true;
      } else {
        return false;
      }

    }
    customerRepository.deleteCustomerById(customerId);
    return true;
  }

  @Override
  public Customer saveCustomer(Customer customer) throws Exception {

    return customerRepository.save(customer);
  }

  @Override
  public List<Object[]> findReportCustomer() throws Exception {
    return customerRepository.findReportCustomer();
  }

  @Override
  public List<Object[]> findReportCustomerChar(int year) throws Exception {
    return customerRepository.findReportCustomerChar(year);
  }
}
