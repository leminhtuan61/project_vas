package fa.appcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.appcode.entities.NewsType;
import fa.appcode.repository.NewsTypeRepository;

@Service
public class NewsTypeServiceImpl implements NewsTypeService {

  @Autowired
  private NewsTypeRepository newsTypeRepo;

  @Override
  public List<NewsType> findAll() {
    return newsTypeRepo.findAll();
  }

}
