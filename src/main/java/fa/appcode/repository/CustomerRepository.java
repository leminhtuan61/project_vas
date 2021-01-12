package fa.appcode.repository;

import fa.appcode.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
  Customer findCustomerByCustomerId(int customerId);

  @Modifying
  @Transactional
  @Query(nativeQuery = true, value = "DELETE FROM customer"
      + " WHERE customer_id IN ?1")
  void deleteCustomerById(List<Integer> customerId) throws Exception;

  @Query("SELECT c.fullName, c.dateOfBirth, c.address, c.identityCard, "
      + " COUNT(i.injectionResultId), c.customerId \n"
      + "FROM  Customer c LEFT JOIN c.injectionResults i \n"
      + "GROUP BY  c.fullName, c.dateOfBirth,"
      + " c.address, c.identityCard, c.customerId")
  List<Object[]> findReportCustomer() throws Exception;

  @Query("SELECT MONTH(i.injectionDate) as MONTH, "
      + " COUNT(DISTINCT c.customerId) \n"
      + "FROM      InjectionResult i JOIN i.customer c\n"
      + "WHERE     YEAR(i.injectionDate) = ?1 \n"
      + "GROUP BY  MONTH(i.injectionDate)")
  List<Object[]> findReportCustomerChar(int year) throws Exception;
}
