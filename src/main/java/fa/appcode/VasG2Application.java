package fa.appcode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import fa.appcode.captcha.CaptchaGenerator;

@SpringBootApplication
public class VasG2Application {

  public static void main(String[] args) {
    SpringApplication.run(VasG2Application.class, args);
  }

  @Bean
  public CaptchaGenerator getCaptchaGenerator() {
    return new CaptchaGenerator();
  }

}
