package fa.appcode.web.controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.CustomUserDetails;

@Controller
public class InitController {

  /**
   * The method handle req "/login", "/" and display login screen.
   * 
   * @param error.
   * @param model.
   * @param principal.
   * @return display login screen.
   */
  @GetMapping(value = { "/login", "/" })
  public String init(
      @RequestParam(required = false, value = "error") String error,
      Model model, Principal principal) {
    model.addAttribute("employee", new CustomUserDetails());
    LogUtils.getLogger().info(error);
    if (error != null && error.equals("true")) {
      model.addAttribute("message",
          "Sorry, your username or password is incorrect. Please try again!");
      return "login";

    } else {
      return "login";
    }

  }

  /**
   * The method handle req "/index" and display login screen.
   * 
   * @param model.
   * @param principal.
   * @return display main screen.
   */
  @GetMapping(value = { "/index" })
  public String homePage(Principal principal, Model model) {
    LogUtils.getLogger().info(principal.getName());
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "main";
  }

  /**
   * The method handle req "/403" and display 403 screen.
   * 
   * @param model.
   * @param principal.
   * @return display 403 screen.
   */
  @GetMapping(value = { "/403" })
  public String load403(Principal principal, Model model) {
    LogUtils.getLogger().info(principal.getName());
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "403";
  }

}
