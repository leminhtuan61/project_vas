package fa.appcode.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.context.annotation.PropertySource;

import java.time.LocalDate;

@Entity
@Table(name = "NEWS", schema = "VACCINE")
@PropertySource("classpath:ValidationMessages.properties")
public class News {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "NEWS_ID")
  private int newsId;

  @Size(min = 0, max = 4000, message = "{msg.newsContent.max}")
  @NotEmpty(message = "{msg.newsContent.empty}")
  @Column(name = "CONTENT", columnDefinition = "VARCHAR(4000)")
  private String content;

  @Pattern(regexp = "^.{0,1000}$", message = "{msg.newsPreview.max}")
  @NotEmpty(message = "{msg.newsPreview.empty}")
  @Column(name = "PREVIEW", columnDefinition = "VARCHAR(1000)")
  private String preview;

  @Pattern(regexp = "^.{0,300}$", message = "{msg.newsTitle.max}")
  @NotEmpty(message = "{msg.newsTitle.empty}")
  @Column(name = "TITLE", columnDefinition = "VARCHAR(300)")
  private String title;

  @Column(name = "POST_DATE")
  private LocalDate postDate;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "NEWS_TYPE_ID")
  private NewsType newsType;

  public News() {
    super();
  }

  public News(int newsId, String content, String preview, LocalDate postDate,
      String title) {
    super();
    this.newsId = newsId;
    this.content = content;
    this.preview = preview;
    this.postDate = postDate;
    this.title = title;
  }

  public int getNewsId() {
    return newsId;
  }

  public void setNewsId(int newsId) {
    this.newsId = newsId;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getPreview() {
    return preview;
  }

  public void setPreview(String preview) {
    this.preview = preview;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public NewsType getNewsType() {
    return newsType;
  }

  public void setNewsType(NewsType newsType) {
    this.newsType = newsType;
  }

  public LocalDate getPostDate() {
    return postDate;
  }

  public void setPostDate(LocalDate postDate) {
    this.postDate = postDate;
  }

  @Override
  public String toString() {
    return "News [newsId=" + newsId + ", content=" + content + ", preview="
        + preview + ", title=" + title + ", postDate=" + postDate
        + ", newsType=" + newsType + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((content == null) ? 0 : content.hashCode());
    result = prime * result + newsId;
    result = prime * result + ((newsType == null) ? 0 : newsType.hashCode());
    result = prime * result + ((postDate == null) ? 0 : postDate.hashCode());
    result = prime * result + ((preview == null) ? 0 : preview.hashCode());
    result = prime * result + ((title == null) ? 0 : title.hashCode());
    return result;
  }

}
