package fa.appcode.web.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.Customer;
import fa.appcode.entities.InjectionResult;
import fa.appcode.entities.Vaccine;
import fa.appcode.entities.VaccineType;
import fa.appcode.service.CustomerService;
import fa.appcode.service.InjectionResultService;
import fa.appcode.service.VaccineService;
import fa.appcode.service.VaccineTypeService;
import fa.appcode.validator.InjectionResultValidator;

@Controller
public class InjectionResultController {
  @Autowired
  private InjectionResultService injectionResultService;

  @Autowired
  private CustomerService customerService;

  @Autowired
  private VaccineService vaccineService;

  @Autowired
  private VaccineTypeService vaccineTypeService;

  @Autowired
  private InjectionResultValidator validator;

  @InitBinder("/injectionResult/save")
  protected void initInjectionResultBinder(WebDataBinder binder) {
    binder.addValidators(validator);
  }

  private void listCustomer(Model model) {
    List<Customer> customerList = new ArrayList<>(
        customerService.findAllCustomer());
    for (Customer customer : customerList) {
      customer.setDisplayCustomer(
          customer.getCustomerId() + "-" + customer.getFullName() + "-"
              + customer.getDateOfBirth().toString());
    }
    model.addAttribute("customer", customerList);
  }

  private void bindRequiredData(Model model) throws Exception {
    model.addAttribute("injectionResult", new InjectionResult());
    List<InjectionResult> injectionResults = injectionResultService.findAll();
    model.addAttribute("injectionResults", injectionResults);
    listCustomer(model);
    List<Vaccine> vaccineList = vaccineService.findAllVaccine();
    model.addAttribute("vaccineList", vaccineList);
    List<VaccineType> vaccineTypeList = vaccineTypeService.findAllVaccineType();
    model.addAttribute("vaccineTypeList", vaccineTypeList);
  }

  private String validateForm(
      @ModelAttribute("injectionResult") @Valid InjectionResult injectionResult,
      BindingResult bindingResult, Model model) throws Exception {
    LogUtils.getLogger().error("Error: " + bindingResult.getErrorCount());
    BeanPropertyBindingResult beanBindingResult = new BeanPropertyBindingResult(
        injectionResult, bindingResult.getObjectName());
    for (FieldError e : bindingResult.getFieldErrors()) {
      beanBindingResult.addError(e);
    }
    for (ObjectError e : bindingResult.getGlobalErrors()) {
      beanBindingResult.addError(e);
    }
    bindRequiredData(model);
    model.addAllAttributes(beanBindingResult.getModel());
    return "addInjectionResult";
  }

  /**
   * List all Injection Result
   *
   * @param status
   *          to alert message when adding success
   * @param model
   *          to use model.addAttribute
   * @return list injection result screen
   * @throws Exception
   *           when you have an error
   */

  @RequestMapping(value = "/injectionResult/list", method = RequestMethod.GET)
  public String getAllInjectionResult(
      @RequestParam(value = "status", required = false) String status,
      Model model, Principal principal) throws Exception {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    if (status != null) {
      model.addAttribute("status", status);
    }
    List<InjectionResult> injectionResults = injectionResultService.findAll();
    model.addAttribute("injectionResult", injectionResults);
    return "listInjectionResult";
  }

  /**
   * List all Injection Result using Ajax
   *
   * @param status
   *          to alert message when adding success
   * @param model
   *          to use model.addAttribute
   * @return list injection result screen
   * @throws Exception
   *           when you have an error
   */
  @GetMapping(value = "/ajax/injectionResult/list")
  public String getAllInjectionResultAjax(
      @RequestParam(value = "status", required = false) String status,
      Model model) throws Exception {
    if (status != null) {
      model.addAttribute("status", status);
    }
    List<InjectionResult> injectionResults = injectionResultService.findAll();
    model.addAttribute("injectionResult", injectionResults);
    return "mainListInjectionResult";
  }

  /**
   * Load add Injection Result form
   *
   * @param injectionResult
   *          passed ModelAttribute injectionResult
   * @param model
   *          to use model.addAttribute
   * @return an add InjectionResult screen
   * @throws Exception
   *           when you have an error
   */
  @RequestMapping(value = "/injectionResult/create", method = RequestMethod.GET)
  public String createInjectionResult(
      @ModelAttribute("injectionResult") InjectionResult injectionResult,
      Model model, Principal principal) throws Exception {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    bindRequiredData(model);
    return "addInjectionResult";
  }

  /**
   * Load add Injection Result form using ajax
   *
   * @param injectionResult
   *          passed ModelAttribute injectionResult
   * @param model
   *          to use model.addAttribute
   * @return an add InjectionResult screen
   * @throws Exception
   *           when you have an error
   */
  @GetMapping(value = "/ajax/injectionResult/create")
  public String createInjectionResultAjax(
      @ModelAttribute("injectionResult") InjectionResult injectionResult,
      Model model) throws Exception {
    bindRequiredData(model);
    return "mainAddInjectionResult";
  }

  /**
   * Save an Injection Result to database
   *
   * @param injectionResult
   *          passed ModelAttribute injectionResult
   * @param bindingResult
   *          to business validate
   * @param model
   *          to use model.addAttribute
   * @param customerId
   *          passed ModelAttribute customer
   * @param vaccineId
   *          passed ModelAttribute vaccine
   * @return to the list page if successful and notify the message
   * @throws Exception
   *           when you have an error
   */

  @PostMapping(value = "/injectionResult/save")
  public String saveInjectionResult(
      @ModelAttribute("injectionResult") @Valid InjectionResult injectionResult,
      BindingResult bindingResult, Model model,
      @ModelAttribute("customer") Customer customerId,
      @ModelAttribute("vaccine") Vaccine vaccineId) throws Exception {

    LogUtils.getLogger().info(injectionResult.getNumberOfInjection());
    if (bindingResult.hasErrors()) {
      return validateForm(injectionResult, bindingResult, model);
    } else {
      Customer customer = customerService
          .findCustomerById(customerId.getCustomerId());
      injectionResult.setCustomer(customer);
      Vaccine vaccine = vaccineService
          .findVaccineById(vaccineId.getVaccineId());
      injectionResult.setVaccine(vaccine);
      injectionResultService.save(injectionResult);
      return "redirect:/injectionResult/list?status=complete";
    }
  }

  /**
   * Load update Injection Result form
   *
   * @param injectionResultId
   *          pass the id of injection result you want to update
   * @param model
   *          to use model.addAttribute
   * @return update injection Result form
   */

  @GetMapping(value = "/injectionResult/edit/{injectionResult}")
  public String editInjectionResult(
      @PathVariable("injectionResult") int injectionResultId, Model model,
      Principal principal) {
    model.addAttribute("userName", principal.getName());
    InjectionResult injectionResult = null;
    try {
      /* model.addAttribute("injectionResult", new InjectionResult()); */
      injectionResult = injectionResultService
          .findInjectionResultById(injectionResultId);
      listCustomer(model);
      List<VaccineType> vaccineTypes = vaccineTypeService.findAllVaccineType();
      List<Customer> customerList = customerService.findAllCustomer();
      List<Vaccine> vaccines = vaccineService.findAllVaccine();
      model.addAttribute("vaccines", vaccines);
      model.addAttribute("customers", customerList);
      model.addAttribute("vaccineTypes", vaccineTypes);
      model.addAttribute("injectionResult", injectionResult);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "updateInjectionResult";
  }

  /**
   * Update an Injection Result from the list
   *
   * @param injectionResult
   *          passed ModelAttribute injectionResult
   * @param bindingResult
   *          to business validate
   * @param customer
   *          passed ModelAttribute customer
   * @param vaccine
   *          passed ModelAttribute vaccine
   * @param model
   *          to use model.addAttribute
   * @return redirect to the list screen if success and alert message
   * @throws Exception
   *           when you have error
   */
  @PostMapping(value = "/injectionResult/update")
  public String updateInjectionResult(
      @ModelAttribute("injectionResult") @Valid InjectionResult injectionResult,
      BindingResult bindingResult,
      @ModelAttribute("customer") Customer customer,
      @ModelAttribute("vaccine") Vaccine vaccine, Model model)
      throws Exception {
    LogUtils.getLogger().info(injectionResult.getNumberOfInjection());
    if (bindingResult.hasErrors()) {
      return validateForm(injectionResult, bindingResult, model);
    } else {
      injectionResultService.save(injectionResult);
      return "redirect:/injectionResult/list";
    }

  }

  /**
   * To delete one or more injection result
   *
   * @param injectionResultIds
   *          pass the id of the injection result to delete
   * @param model
   *          to use model.addAttribute
   * @return the list Injection Result screen
   * @throws Exception
   *           when you have error
   */

  @GetMapping("/injectionResult/delete/{injectionIds}")
  public String deleteContent(
      @PathVariable("injectionIds") List<Integer> injectionResultIds,
      Model model, Principal principal) throws Exception {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    LogUtils.getLogger().info(injectionResultIds);
    for (Integer injectionResultId : injectionResultIds) {
      injectionResultService.delete(injectionResultId);
    }
    List<InjectionResult> injectionResults = injectionResultService.findAll();
    model.addAttribute("injectionResult", injectionResults);
    return "listInjectionResult";
  }

  /**
   * Delete all the injection Result stored in the database.
   *
   * @return list Injection Result screen.
   */

  @GetMapping(value = "/injectionResult/deleteAll")
  public String deleteInjectionResult(Model model, Principal principal) {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());

    injectionResultService.deleteAll();

    return "listInjectionResult";
  }

}
