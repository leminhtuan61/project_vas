package fa.appcode.exception;

import java.security.Principal;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@org.springframework.web.bind.annotation.ControllerAdvice
public class ExceptionControllerAdvice {

  /**
   * Exception occur when DateNotFoundException.
   * 
   * @param model
   *          an object which transfer data between view and controller.
   * @param dateNotFoundException.
   * @return "actionSaveCustomer".
   */
  @ExceptionHandler(DateNotFoundException.class)
  public String handleDateNotFoundException(Model model,
      DateNotFoundException dateNotFoundException) {

    model.addAttribute("msgErrEx", "Please choose Date of Birth !");
    return "actionSaveCustomer";
  }

  /**
   * Exception occur when CustomerNotFoundException.
   * 
   * @param model.
   * @param customerNotFoundException.
   * @return main screen.
   */
  @ExceptionHandler(CustomerNotFoundException.class)
  public String handleMyException(Model model,
      CustomerNotFoundException customerNotFoundException) {

    model.addAttribute("msgErrEx", "Customer Not Found!");
    return "main";
  }

  /**
   * Exception occur when we cannot find the proper news.
   * 
   * @param model
   *          an object which transfer data between view and controller.
   * @param newsNotFoundException
   *          an object of NewsNotFound class.
   * @return newsList view.
   */
  @ExceptionHandler(NewsNotFoundException.class)
  public String handleMyException(Model model,
      NewsNotFoundException newsNotFoundException) {

    model.addAttribute("msgErrEx", "News not found!");
    return "main";
  }

  @ExceptionHandler(NoHandlerFoundException.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  public String handleResourceNotFoundException(Principal principal,
      Model model) {
    model.addAttribute("userName", principal.getName());
    return "404";
  }

}
