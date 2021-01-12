package fa.appcode.web.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.entities.News;
import fa.appcode.exception.NewsNotFoundException;
import fa.appcode.service.NewsService;
import fa.appcode.service.NewsTypeService;

@Controller
public class NewsController {

  @Autowired
  private NewsService newsService;

  @Autowired
  private NewsTypeService newsTypeService;

  /**
   * Method to handle request /news/list Get list of news method, it will seek
   * all the news from DB and pass them to the model parameter.
   * 
   * @param principal
   *          represents current user.
   * @param model
   *          an object which carry data between view and controller.
   * @return newsList view name.
   */
  @GetMapping("news/list")
  private String findAll(Principal principal, Model model) {
    model.addAttribute("news", new News());
    model.addAttribute("newsTypeList", newsTypeService.findAll());
    model.addAttribute("newsList", newsService.findAll());
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "newsList";
  }

  /**
   * Method to handle /news/list/detail/{id} It will find the proper news and
   * pass it's information to view.
   * 
   * @param id
   *          id of the needed news.
   * @param model
   *          an object which carry data between view and controller.
   * @param principal
   *          represents current user.
   * @return detail view name.
   */
  @GetMapping("/news/list/detail/{id}")
  public String getNewsById(@PathVariable("id") Integer id, Model model,
      Principal principal) {
    News news = newsService.findById(id);
    model.addAttribute("news", news);
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "detail";
  }

  /**
   * Method to handle /news/delete request and delete multiple news with given
   * list of news's id.
   * 
   * @param newsId
   *          a list contains id of the needed news.
   * @param model
   *          an object which carry data between view and controller.
   * @param principal
   *          represents current user.
   * @return location of news listing.
   */
  @GetMapping("/news/delete")
  public String deleteNewsById(@RequestParam List<Integer> newsId, Model model,
      Principal principal) {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    try {
      newsService.deleteNewsByIds(newsId);
      model.addAttribute("newsList", newsService.findAll());
      return "redirect:/news/list";
    } catch (Exception e) {
      model.addAttribute("newsList", newsService.findAll());
      return "redirect:/news/list";
    }
  }

  /**
   * Handle /news/delete?newsId={newsId} and delete a news by given id.
   * 
   * @param newsId
   *          news's id.
   * @param model
   *          an object which carry data between view and controller.
   * @param principal
   *          represents current user.
   * @return list of news.
   */
  @GetMapping("/news/delete?newsId={newsId}")
  public String deleteContent(@PathVariable("newsId") int newsId, Model model,
      Principal principal) {
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    try {
      newsService.deleteById(newsId);
      model.addAttribute("newsList", newsService.findAll());
      return "redirect:/news/list";
    } catch (Exception e) {
      LogUtils.getLogger().error("News not found!", new NewsNotFoundException(
          "Can not find news that have id: " + newsId, "500"));
    }
    model.addAttribute("newsList", newsService.findAll());
    return "redirect:/news/list";
  }

  /**
   * Method to handle /news/create will map the attributes and return create
   * news page.
   * 
   * @param principal
   *          represents current user.
   * @param model
   *          an object which carry data between view and controller.
   * @return createNews page.
   */
  @GetMapping("/news/create")
  public String createNews(Principal principal, Model model) {
    model.addAttribute("title", "CREATE NEWS");
    model.addAttribute("news", new News());
    model.addAttribute("newsType", newsTypeService.findAll());
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "createNews";
  }

  /**
   * Method to handle /news/save request from user and will save or update news
   * according to it's id.
   * 
   * @param news
   *          object news.
   * @param result
   *          object of BindingResult to check form error.
   * @param model
   *          an object which carry data between view and controller.
   * @param principal
   *          represents current user.
   * @return create news page if save fail, otherwise return newsList.
   * @throws Exception
   *           when try to save a null object.
   */
  @PostMapping("/news/save")
  public String saveNews(@Valid @ModelAttribute("news") News news,
      BindingResult result, Model model, Principal principal) throws Exception {
    if (result.hasErrors()) {
      UserDetails loginedUser = (UserDetails) ((Authentication) principal)
          .getPrincipal();
      LogUtils.getLogger().info(loginedUser);
      model.addAttribute("userName", loginedUser.getUsername());
      model.addAttribute("title", "CREATE NEWS");
      model.addAttribute("news", news);
      model.addAttribute("newsType", newsTypeService.findAll());
      return "createNews";
    }
    news.setPostDate(LocalDate.now());
    newsService.save(news);
    model.addAttribute("newsList", newsService.findAll());
    return "newsList";
  }

  /**
   * Method to handle /news/update/{id} from user and go to update news page.
   * 
   * @param id
   *          news's id.
   * @param model
   *          an object which carry data between view and controller.
   * @param principal
   *          represents current user.
   * @return createNews page.
   */
  @GetMapping("/news/update/{id}")
  public String updateNews(@PathVariable("id") Integer id, Model model,
      Principal principal) {
    News news = newsService.findById(id);
    model.addAttribute("newsType", newsTypeService.findAll());
    model.addAttribute("title", "UPDATE NEWS");
    model.addAttribute("news", news);
    UserDetails loginedUser = (UserDetails) ((Authentication) principal)
        .getPrincipal();
    LogUtils.getLogger().info(loginedUser);
    model.addAttribute("userName", loginedUser.getUsername());
    return "createNews";
  }
}
