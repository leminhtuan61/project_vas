package fa.appcode.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.Arrays;

import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import fa.appcode.entities.Customer;
import fa.appcode.repository.CustomerRepository;
import fa.appcode.repository.NewsRepository;

@RunWith(MockitoJUnitRunner.class)
public class CustomerServiceTest {

  private static Customer customer;
  private static Customer customer1;
  private static Object[] object;
  private static Object[] object1;
  private static Object[] object2;
  private static Object[] object3;

  @Mock
  private NewsRepository newsRepository;
  @Mock
  private CustomerRepository customerRepository;

  @InjectMocks
  private CustomerService customerService = new CustomerServiceImpl();

  /**
   * Set up some sample for test.
   */
  @BeforeAll
  public static void init() {
    customer = new Customer("Ha noi", "Tuan", 1);
    customer1 = new Customer("Ha noi", " Le Tuan", 1);
    object = new Object[] { "John.F.Kenedy", "1990-05-08", "Washington, D.C.",
        "123123", 2 };
    object1 = new Object[] { "Donald.J.Trump", "1980-08-08", "Washington, D.C.",
        "412567", 2 };
    object2 = new Object[] { 6, 2 };
    object3 = new Object[] { 1, 1 };
  }

  @Test
  public void testFindAllCustomer() {
    Mockito.when(customerRepository.findAll()).thenReturn(Arrays.asList());
    assertEquals(customerService.findAllCustomer().size(), 0);
    Mockito.verify(customerRepository, Mockito.times(1)).findAll();
  }

  @Test
  public void testFindAll_WhenHasRecord() {
    Mockito.when(customerRepository.findAll())
        .thenReturn(Arrays.asList(customer, customer1));
    assertEquals(customerService.findAllCustomer().size(), 2);
  }

  @Test
  public void testDeleteById_WhenExistId() {
    when(customerRepository.existsById(1)).thenReturn(true);
    customerService.deleteCustomerById(1);
    Mockito.verify(customerRepository, Mockito.times(1)).deleteById(1);
  }

  @Test
  public void testDeleteById_WhenNotExistId() {
    when(customerRepository.existsById(1)).thenReturn(false);
    customerService.deleteCustomerById(1);
    Mockito.verify(customerRepository, Mockito.times(0)).deleteById(1);
  }

  @Test
  public void testSaveNews_WhenSuccess() throws Exception {
    customerService.saveCustomer(customer1);
    Mockito.verify(customerRepository, Mockito.times(1)).save(customer1);
  }

  @Test
  public void findReportCustomer() throws Exception {
    Mockito.when(customerRepository.findReportCustomer())
        .thenReturn(Arrays.asList());
    assertEquals(customerService.findReportCustomer().size(), 0);
    Mockito.verify(customerRepository, Mockito.times(1)).findReportCustomer();
  }

  @Test
  public void findReportCustomer_WhenHasRecord() throws Exception {
    Mockito.when(customerRepository.findReportCustomer())
        .thenReturn(Arrays.asList(object, object1));
    assertEquals(customerService.findReportCustomer().size(), 2);
    Mockito.verify(customerRepository, Mockito.times(1)).findReportCustomer();
  }

  @Test
  public void findReportCustomerChar() throws Exception {
    Mockito.when(customerRepository.findReportCustomerChar(2020))
        .thenReturn(Arrays.asList());

    assertEquals(customerService.findReportCustomerChar(2020).size(), 0);
    Mockito.verify(customerRepository, Mockito.times(1))
        .findReportCustomerChar(2020);
  }

  @Test
  public void findReportCustomerChar_WhenHasRecord() throws Exception {
    Mockito.when(customerRepository.findReportCustomerChar(2018))
        .thenReturn(Arrays.asList(object2, object3));

    assertEquals(customerService.findReportCustomerChar(2018).size(), 2);
    Mockito.verify(customerRepository, Mockito.times(1))
        .findReportCustomerChar(2018);
  }

}
