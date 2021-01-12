package fa.appcode.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Optional;

import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import fa.appcode.entities.News;
import fa.appcode.entities.NewsType;
import fa.appcode.exception.NewsNotFoundException;
import fa.appcode.repository.NewsRepository;

@RunWith(MockitoJUnitRunner.class)
public class NewsServiceTest {

  private static News news1;
  private static News news2;

  @Mock
  private NewsRepository newsRepository;

  @InjectMocks
  private NewsServiceImpl newsServiceImpl;

  /**
   * Set up some sample for news.
   */
  @BeforeAll
  public static void init() {
    NewsType newsType = new NewsType("All about health", "Health");
    news1 = new News(1, "Test content sample 1", "Test preview sample 1",
        LocalDate.of(2021, 1, 5), "Test title sample 1");
    news1.setNewsType(newsType);
    news2 = new News(2, "Test content sample 2", "Test preview sample 2",
        LocalDate.of(2021, 1, 5), "Test title sample 2");
    news2.setNewsType(newsType);
  }

  @Test
  public void testFindAll_WhenNoRecord() {
    Mockito.when(newsRepository.findAll()).thenReturn(Arrays.asList());
    assertEquals(newsServiceImpl.findAll().size(), 0);
    Mockito.verify(newsRepository, Mockito.times(1)).findAll();
  }

  @Test
  public void testFindAll_WhenHasRecord() {
    Mockito.when(newsRepository.findAll())
        .thenReturn(Arrays.asList(news1, news2));
    assertEquals(newsServiceImpl.findAll().size(), 2);
    assertEquals(newsServiceImpl.findAll().get(0), news1);
    assertEquals(newsServiceImpl.findAll().get(1), news2);
    Mockito.verify(newsRepository, Mockito.times(3)).findAll();
  }

  @Test
  public void testFindById_WhenNoException() {
    news1 = Mockito.mock(News.class);
    Mockito.when(newsRepository.findById(1)).thenReturn(Optional.of(news1));
    assertEquals(newsServiceImpl.findById(1), news1);
    Mockito.verify(newsRepository, Mockito.times(1)).findById(1);
  }

  @Test(expected = NewsNotFoundException.class)
  public void testFindById_WhenThrowException() {
    when(newsRepository.findById(ArgumentMatchers.anyInt())).thenThrow(
        new NewsNotFoundException("Can not find news that have id: 1", "500"));
    newsServiceImpl.findById(1);
    Mockito.verify(newsRepository, Mockito.times(1)).findById(1);
  }

  @Test
  public void testDeleteById_WhenExistId() {
    when(newsRepository.existsById(1)).thenReturn(true);
    assertEquals(newsServiceImpl.deleteById(1), true);
    Mockito.verify(newsRepository, Mockito.times(1)).deleteById(1);
  }

  @Test
  public void testDeleteById_WhenNotExistId() {
    when(newsRepository.existsById(1)).thenReturn(false);
    assertEquals(newsServiceImpl.deleteById(1), false);
    Mockito.verify(newsRepository, Mockito.times(0)).deleteById(1);
  }

  @Test
  public void testSaveNews_WhenSuccess() {
    when(newsRepository.save(Mockito.any(News.class)))
        .thenAnswer(arg -> arg.getArguments()[0]);
    assertEquals(newsServiceImpl.save(news1), news1);
    Mockito.verify(newsRepository, Mockito.times(1)).save(news1);
  }

  @Test(expected = IllegalArgumentException.class)
  public void testSaveNews_WhenFail() {
    News news = mock(News.class);
    when(newsRepository.save(Mockito.any(News.class)))
        .thenThrow(new IllegalArgumentException());
    newsServiceImpl.save(news);
    Mockito.verify(newsRepository, Mockito.times(1)).save(news);
  }
}
