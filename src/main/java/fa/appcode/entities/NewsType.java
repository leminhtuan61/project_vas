package fa.appcode.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "NEWS_TYPE", schema = "VACCINE")
public class NewsType {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "NEWS_TYPE_ID")
  private int newsTypeId;

  @Column(name = "DESCRIPTION", columnDefinition = "VARCHAR(10)")
  private String description;

  @Column(name = "NEWS_TYPE_NAME", columnDefinition = "VARCHAR(50)")
  private String newsTypeName;

  @OneToMany(mappedBy = "newsType", cascade = CascadeType.ALL)
  private Set<News> news;

  public NewsType() {
    super();
  }

  public NewsType(int newsTypeId, String description, String newsTypeName) {
    super();
    this.newsTypeId = newsTypeId;
    this.description = description;
    this.newsTypeName = newsTypeName;
  }

  public NewsType(String description, String newsTypeName) {
    super();
    this.description = description;
    this.newsTypeName = newsTypeName;
  }

  public int getNewsTypeId() {
    return newsTypeId;
  }

  public void setNewsTypeId(int newsTypeId) {
    this.newsTypeId = newsTypeId;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getNewsTypeName() {
    return newsTypeName;
  }

  public void setNewsTypeName(String newsTypeName) {
    this.newsTypeName = newsTypeName;
  }

  public Set<News> getNews() {
    return news;
  }

  public void setNews(Set<News> news) {
    this.news = news;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result
        + ((description == null) ? 0 : description.hashCode());
    result = prime * result + newsTypeId;
    result = prime * result
        + ((newsTypeName == null) ? 0 : newsTypeName.hashCode());
    return result;
  }

  @Override
  public String toString() {
    return "NewsType [newsTypeId=" + newsTypeId + ", description=" + description
        + ", newsTypeName=" + newsTypeName + "]";
  }

}
