package fa.appcode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import fa.appcode.service.EmployeeServiceImpl;
import fa.appcode.utils.Constants;

@Configuration
@EnableWebSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {

  @Autowired
  private EmployeeServiceImpl employeeService;

  @Bean
  public BCryptPasswordEncoder passwordEncoder() {
    BCryptPasswordEncoder password = new BCryptPasswordEncoder();
    return password;
  }

  /**
   * method configureglobal.
   * 
   * @param auth
   *          auth.
   * @throws Exception
   *           throws.
   */

  @Autowired
  public void configureGlobal(AuthenticationManagerBuilder auth)
      throws Exception {

    // Setting Service to find User in the database.
    // And Setting PassswordEncoder
    auth.userDetailsService(employeeService).passwordEncoder(passwordEncoder());
  }

  /**
   * method configure security.
   */

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http.csrf().disable();
    http.authorizeRequests().antMatchers("/", "/login", "/save").permitAll();
    http.authorizeRequests().antMatchers(Constants.AUTHORIZED_REQ_ADMIN_USER)
        .access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
    http.authorizeRequests().antMatchers(Constants.AUTHORIZED_REQ_ADMIN)
        .hasAuthority("ROLE_ADMIN");
    http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
    http.authorizeRequests().and().formLogin()
        .loginProcessingUrl("/j_spring_security_check")// Submit
        .loginPage("/login")//
        .defaultSuccessUrl("/index")//
        .failureUrl("/login?error=true")//
        .usernameParameter("username")//
        .passwordParameter("password").and().logout().logoutUrl("/logout")
        .logoutSuccessUrl("/login");

  }
}
