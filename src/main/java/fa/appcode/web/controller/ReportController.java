package fa.appcode.web.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.CustomUserDetails;
import fa.appcode.entities.VaccineType;
import fa.appcode.service.CustomerService;
import fa.appcode.service.InjectionResultService;
import fa.appcode.service.VaccineService;
import fa.appcode.service.VaccineTypeService;

@Controller
public class ReportController {

  @Autowired
  private InjectionResultService injectionResultService;

  @Autowired
  private CustomerService customerService;

  @Autowired
  private VaccineService vaccineService;

  @Autowired
  private VaccineTypeService vaccineTypeService;

  /**
   * method handle req /char and show ChartInjectionResult screen.
   * 
   * @param principal.
   * @param model.
   * @return show ChartInjectionResult screen.
   */
  @GetMapping(value = { "/char" })
  public String showCharInjectionResult(Principal principal, Model model) {
    model.addAttribute("employee", new CustomUserDetails());
    LogUtils.getLogger().info("Inside doLogin!");
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "ChartInjectionResult";
  }

  /**
   * method handle req "/charCustomer" and show ChartCustomer screen.
   * 
   * @param principal.
   * @param model.
   * @return show ChartCustomer screen.
   */
  @GetMapping(value = { "/charCustomer" })
  public String initCharCustomer(Principal principal, Model model) {
    model.addAttribute("employee", new CustomUserDetails());
    LogUtils.getLogger().info("Inside doLogin!");
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "ChartCustomer";
  }

  /**
   * method handle req "/charVaccine" and show ChartVaccine screen.
   * 
   * @param principal.
   * @param model.
   * @return show ChartVaccine screen.
   */
  @GetMapping(value = { "/charVaccine" })
  public String initCharVaccine(Principal principal, Model model) {
    model.addAttribute("employee", new CustomUserDetails());
    LogUtils.getLogger().info("Inside doLogin!");
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "ChartVaccine";
  }

  /**
   * The method handle req "/report/listInject" and show ReportsInjectionResult
   * screen.
   * 
   * @param principal.
   * @param model.
   * @return show ReportsInjectionResult screen.
   * @throws Exception
   *           if error.
   */
  @RequestMapping(value = "/report/listInject", method = RequestMethod.GET)
  public String getDataListInject(Principal principal, Model model)
      throws Exception {
    List<VaccineType> vaccineTypes = vaccineTypeService.findAllVaccineType();
    model.addAttribute("vaccineTypes", vaccineTypes);

    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());

    List<Object[]> injectionResults1 = injectionResultService
        .findReportInjectionresult();
    model.addAttribute("injectionResult1", injectionResults1);
    return "ReportsInjectionResult";
  }

  /**
   * The method handle req "/report/listCustomer" and show ReportsCustomer
   * screen.
   * 
   * @param principal.
   * @param model.
   * @return show ReportsCustomer screen.
   * @throws Exception
   *           if error.
   */
  @RequestMapping(value = "/report/listCustomer", method = RequestMethod.GET)
  public String getDatalistCustomer(Principal principal, Model model)
      throws Exception {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());

    List<Object[]> customers = customerService.findReportCustomer();
    model.addAttribute("customers", customers);
    return "ReportsCustomer";
  }

  /**
   * The method handle req "/report/listVaccine" and show ReportsVaccine screen.
   * 
   * @param principal.
   * @param model.
   * @return show ReportsVaccine screen.
   * @throws Exception
   *           if error.
   */
  @RequestMapping(value = "/report/listVaccine", method = RequestMethod.GET)
  public String getDatalistVaccine(Principal principal, Model model)
      throws Exception {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());

    List<VaccineType> vaccineTypes = vaccineTypeService.findAllVaccineType();
    model.addAttribute("vaccineTypes", vaccineTypes);
    List<Object[]> vaccines = vaccineService.findReportVaccine();
    model.addAttribute("vaccines", vaccines);
    return "ReportsVaccine";
  }
}
