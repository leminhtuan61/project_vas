package fa.appcode.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.appcode.entities.NewsType;

public interface NewsTypeRepository extends JpaRepository<NewsType, Integer> {
}
