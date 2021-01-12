package fa.appcode.service;

import java.util.List;

import fa.appcode.entities.News;
import fa.appcode.exception.NewsNotFoundException;

public interface NewsService {

  /**
   * Method to get all the News from DB.
   * 
   * @return a list of News from DB
   */
  List<News> findAll();

  /**
   * Find a news by it's given ID.
   * 
   * @param id
   *          ID of the news we want to find
   * @return the News
   */
  News findById(int id);

  /**
   * Save a news to DB.
   * 
   * @param news
   *          a new news we want to add to DB.
   * @throws IllegalArgumentException
   *           when being passed a null object.
   */
  News save(News news) throws IllegalArgumentException;

  /**
   * Delete a news by it's ID.
   * 
   * @param id
   *          news Id.
   * @return true if we success delete it or false when fail.
   * @throws NewsNotFoundException
   *           when no news with given id is being found.
   */
  boolean deleteById(int id) throws NewsNotFoundException;

  /**
   * Delete multiple news by it's Ids.
   * 
   * @param newsIds
   *          list of news Id we want to delete.
   * @return true when we success, false when we fail to delete it.
   * @throws IllegalArgumentException
   *           when exist one id is null.
   */
  boolean deleteNewsByIds(List<Integer> newsIds)
      throws IllegalArgumentException;
}
