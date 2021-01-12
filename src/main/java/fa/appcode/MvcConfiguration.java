package fa.appcode;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan
public class MvcConfiguration implements WebMvcConfigurer {

  /**
   * The method create a ViewResolver.
   * 
   * @return a ViewResolver.
   */
  @Bean
  public ViewResolver viewResolver() {
    InternalResourceViewResolver viewResol = new InternalResourceViewResolver();
    viewResol.setPrefix("/views/");
    viewResol.setSuffix(".jsp");
    viewResol.setViewClass(JstlView.class);
    return viewResol;
  }

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/resources/**")
        .addResourceLocations("/resources/");
  }
}
