package fa.appcode.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import fa.appcode.entities.News;

public interface NewsRepository extends JpaRepository<News, Integer> {

  /**
   * Method to find news by it's given id.
   * 
   * @param newsId
   *          Id of a news.
   * @return a News with given id.
   */
  News findNewsByNewsId(int newsId);

  /**
   * Method to delete a list of given Ids.
   * 
   * @param newsId
   *          a list of given Ids.
   */
  @Modifying
  @Query("DELETE FROM News n WHERE n.newsId IN ?1")
  void deleteNewsById(List<Integer> newsId);
}
