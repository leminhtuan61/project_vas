package fa.appcode.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.captcha.CaptchaGenerator;
import fa.appcode.captcha.CaptchaUtils;
import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.Customer;
import fa.appcode.service.CustomerService;
import fa.appcode.utils.Constants;
import nl.captcha.Captcha;

@Controller
public class CustomerController {

  @Autowired
  private CustomerService customerService;

  @Autowired
  private CaptchaGenerator captchaGenerator;

  @ModelAttribute("customer")
  public Customer customerSetUp() {
    return new Customer();
  }

  @InitBinder
  private void initBinder(WebDataBinder binder) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    dateFormat.setLenient(false);
    binder.registerCustomEditor(Date.class,
        new CustomDateEditor(dateFormat, false));

  }

  private void generateCaptcha(Model model, HttpSession httpSession) {
    Captcha captcha = captchaGenerator.createCaptcha(200, 50);
    httpSession.setAttribute("captcha", captcha.getAnswer());
    model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));

  }

  private String goViewAddOrUpdate(Model model, HttpSession httpSession) {
    generateCaptcha(model, httpSession);
    return "actionSaveCustomer";
  }

  /**
   * method handle req /listCustomer and find all customer.
   * 
   * @param model
   *          model.
   * @return view listCustomer.
   */

  @GetMapping("/listCustomer")
  public String getAllCustomer(Model model) {
    List<Customer> list = customerService.findAllCustomer();
    model.addAttribute("list", list);
    return "listCustomer";
  }

  /**
   * method handle req /customer/delete and delete customer by list id.
   * 
   * @param ids
   *          use requestParam handle list ids.
   * @param model
   *          model.
   * @return view table_actionDelete.
   * @throws Exception
   *           throws exception to controlleradvice
   */

  @GetMapping("/customer/delete")
  public String deleteCustomerById(@RequestParam List<Integer> ids, Model model)
      throws Exception {
    LogUtils.getLogger().info(ids);
    if (ids.size() == 0) {
      List<Customer> list = customerService.findAllCustomer();
      model.addAttribute("list", list);
      LogUtils.getLogger().info("fail!");

      return "table_actionDelete";
    }
    if (customerService.deleteCustomerById(ids)) {
      LogUtils.getLogger().info("success!");
    } else {
      LogUtils.getLogger().info("fail!");
    }
    List<Customer> list = customerService.findAllCustomer();
    model.addAttribute("list", list);
    return "table_actionDelete";
  }

  /**
   * method handle req /customer/update and find customer by id.
   * 
   * @param id
   *          use requestParam handle id.
   * @param model
   *          model.
   * @param httpSession
   *          save captcha to session.
   * @return view updateCustomer.
   */

  @GetMapping("/customer/update")
  public String doUpdate(@RequestParam Integer id, Model model,
      HttpSession httpSession) {
    generateCaptcha(model, httpSession);
    Customer customer = customerService.getCustomerById(id);
    model.addAttribute("customer", customer);

    return "updateCustomer";
  }

  @GetMapping("/addCustomer")
  public String goAddCustomer(Model model, HttpSession httpSession) {
    generateCaptcha(model, httpSession);
    return "addCustomer";
  }

  /**
   * method handle req customer/save to save or update customer.
   * 
   * @param customer
   *          use modelattribute get customer from form.
   * @param result
   *          bindingresult to send msg validate.
   * @param model
   *          model.
   * @param request
   *          using get session.
   * @param httpSession
   *          using save captcha to session.
   * @return method goViewAddOrUpdate.
   * @throws Exception
   *           throws to controlleradvice.
   */
  @PostMapping(value = "/customer/save")
  public String saveOrUpdate(
      @ModelAttribute("customer") @Valid Customer customer,
      BindingResult result, Model model, HttpServletRequest request,
      HttpSession httpSession) throws Exception {
    if (result.hasErrors()) {
      return goViewAddOrUpdate(model, httpSession);
    }
    if (customer.getCaptcha()
        .equals(request.getSession().getAttribute("captcha"))) {
      customerService.saveCustomer(customer);
      String msg = customer.getCustomerId() == 0
          ? Constants.UPDATE_CUSTOMER_SUCCESS
          : Constants.CREATE_CUSTOMER_SUCCESS;
      model.addAttribute("msg", msg);
    } else {
      String msgErr = customer.getCustomerId() == 0
          ? Constants.UPDATE_CUSTOMER_FAIL
          : Constants.CREATE_CUSTOMER_FAIL;
      model.addAttribute("msgErr", msgErr);
    }
    return goViewAddOrUpdate(model, httpSession);

  }

  /**
   * method handle req /refreshCaptcha to refresh captcha from form.
   * 
   * @param model
   *          parse captcha to form.
   * @param httpSession
   *          save captcha answer to session.
   * @return view captcha.
   */

  @GetMapping("/refreshCaptcha")
  public String refreshCaptcha(Model model, HttpSession httpSession) {
    Captcha captcha = captchaGenerator.createCaptcha(200, 50);
    httpSession.setAttribute("captcha", captcha.getAnswer());
    model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
    return "captcha";
  }

}
