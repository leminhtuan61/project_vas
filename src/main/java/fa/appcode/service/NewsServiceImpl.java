package fa.appcode.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.appcode.entities.News;
import fa.appcode.exception.NewsNotFoundException;
import fa.appcode.repository.NewsRepository;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {

  @Autowired
  private NewsRepository newsRepository;

  @Override
  public List<News> findAll() {
    return newsRepository.findAll();
  }

  @Override
  public News findById(int id) {
    return newsRepository.findById(id).orElseThrow(
        () -> new NewsNotFoundException("Can not find news that have id: " + id,
            "500"));
  }

  @Override
  public News save(News news) throws IllegalArgumentException {
    return newsRepository.save(news);
  }

  @Override
  public boolean deleteById(int id) throws NewsNotFoundException {
    if (newsRepository.existsById(id)) {
      newsRepository.deleteById(id);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteNewsByIds(List<Integer> newsIds)
      throws IllegalArgumentException {
    boolean check = false;
    for (int id : newsIds) {
      if (newsRepository.existsById(id)) {
        check = true;
      } else {
        check = false;
      }
    }
    if (check) {
      newsRepository.deleteNewsById(newsIds);
      return true;
    }
    return false;
  }

}
