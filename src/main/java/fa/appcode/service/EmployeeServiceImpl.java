package fa.appcode.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.CustomUserDetails;
import fa.appcode.entities.Employee;
import fa.appcode.repository.EmployeeReponsitory;
import fa.appcode.repository.RoleRepository;

@Service
public class EmployeeServiceImpl
    implements UserDetailsService, EmployeeService {

  @Autowired
  private EmployeeReponsitory employeeReponsitory;

  @Autowired
  private RoleRepository roleRepository;
  @Autowired
  private PasswordEncoder passwordEncoder;

  @Override
  public UserDetails loadUserByUsername(String username)
      throws UsernameNotFoundException {
    Employee employee = employeeReponsitory.findEmployeeByUsername(username);
    if (employee == null) {
      throw new UsernameNotFoundException(
          "User " + username + " was not found in the database");
    }
    List<String> roleNames = roleRepository
        .findByRoleName(employee.getUsername());
    List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
    if (roleNames != null) {
      for (String role : roleNames) {
        GrantedAuthority authority = new SimpleGrantedAuthority(role);
        grantList.add(authority);
      }
    }
    CustomUserDetails customDetails = (CustomUserDetails) new CustomUserDetails(
        employee.getUsername(), employee.getPassword(), grantList);
    LogUtils.getLogger().info(customDetails.getAuthorities());
    return customDetails;
  }

  @Override
  public Employee save(Employee employee) throws Exception {
    employee.setPassword(passwordEncoder.encode(employee.getPassword()));
    return employeeReponsitory.save(employee);
  }

}
