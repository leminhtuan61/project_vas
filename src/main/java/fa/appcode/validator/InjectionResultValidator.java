package fa.appcode.validator;

import fa.appcode.entities.InjectionResult;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class InjectionResultValidator implements Validator {
  @Override
  public boolean supports(Class<?> clazz) {
    return InjectionResult.class.isAssignableFrom(clazz);
  }

  @Override
  public void validate(Object target, Errors errors) {
    InjectionResult injectionResult = (InjectionResult) target;
    if (!injectionResult.isCorrectInjectDate()) {
      errors.rejectValue("injectionDate", "Date must be earlier "
          + "than current time and next injection date!");
    }
    if (!injectionResult.isCorrectNextInjectDate()) {
      errors.rejectValue("nextInjectionDate",
          "Date must be later than current time and injection date!");
    }
  }
}
