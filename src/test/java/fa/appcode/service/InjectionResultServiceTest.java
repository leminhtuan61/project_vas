package fa.appcode.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnit;
import org.mockito.junit.MockitoJUnitRunner;
import org.mockito.junit.MockitoRule;

import fa.appcode.entities.InjectionResult;
import fa.appcode.repository.InjectionResultRepository;

@RunWith(MockitoJUnitRunner.class)
public class InjectionResultServiceTest {

  private static Object[] object;
  private static Object[] object1;
  private static Object[] object2;
  private static Object[] object3;

  @Rule
  public MockitoRule rule = MockitoJUnit.rule();

  @InjectMocks
  InjectionResultServiceImpl injectionResultServiceImpl;

  @Mock
  InjectionResultRepository injectionResultRepository;

  @Before
  public void setUp() {
    MockitoAnnotations.openMocks(this);
  }

  /**
   * Set up some sample for test.
   */
  @BeforeAll
  public static void init() {
    object = new Object[] { "BBIBP-CorV", "COVID-19", "George W. Bush",
        "2020-04-10", 1, "COVID-19" };
    object1 = new Object[] { "CoronaVac", "COVID-19", "George Washington",
        "2020-04-10", 1, "COVID-19" };
    object2 = new Object[] { 9, 2 };
    object3 = new Object[] { 4, 1 };
  }

  @Test
  public void findAllInjectionResultTest() {
    List<InjectionResult> injectionResults = new ArrayList<>();
    InjectionResult injectionResultOne = new InjectionResult("Kohala Hospital",
        2, "COVID-19");
    InjectionResult injectionResultTwo = new InjectionResult(
        "Children's National Medical Center", 5, "Hepatitis B");
    InjectionResult injectionResultThree = new InjectionResult(
        "Hilo Medical Center", 6, "Diphtheria");
    injectionResults.add(injectionResultOne);
    injectionResults.add(injectionResultTwo);
    injectionResults.add(injectionResultThree);
    when(injectionResultRepository.findAll()).thenReturn(injectionResults);
    List<InjectionResult> injectionResultList = injectionResultServiceImpl
        .findAll();
    assertEquals(3, injectionResultList.size());
    verify(injectionResultRepository, times(1)).findAll();
  }

  @Test
  public void createInjectionResultTest() {
    InjectionResult injectionResult = new InjectionResult("Kohala Hospital", 2,
        "COVID-19");
    injectionResultServiceImpl.save(injectionResult);
    verify(injectionResultRepository, times(1)).save(injectionResult);
  }

  @Test
  public void findInjectionResultIdTest() {
    // InjectionResult injectionResult = new InjectionResult("Kohala Hospital",
    // 5, "Varicella");
    when(injectionResultRepository.findByInjectionResultId(1))
        .thenReturn(new InjectionResult("Kohala Hospital", 5, "Varicella"));
    InjectionResult injectionResult = injectionResultServiceImpl
        .findInjectionResultById(1);

    assertEquals("Varicella", injectionResult.getPrevention());
    assertEquals("Kohala Hospital", injectionResult.getInjectionPlace());

  }

  @Test
  public void deleteInjectionResultTest() {
    final int injectionResultId = 1016;
    injectionResultServiceImpl.delete(injectionResultId);
    verify(injectionResultRepository, Mockito.atLeastOnce())
        .deleteByInjectionResultId(injectionResultId);
  }

  @Test
  public void deleteAllTest() {
    injectionResultServiceImpl.deleteAll();
    verify(injectionResultRepository, times(1)).deleteAll();
  }

  @Test
  public void findReportInjectionresult() throws Exception {
    Mockito.when(injectionResultRepository.findReportInjectionresult())
        .thenReturn(Arrays.asList());
    assertEquals(injectionResultServiceImpl.findReportInjectionresult().size(),
        0);
    Mockito.verify(injectionResultRepository, Mockito.times(1))
        .findReportInjectionresult();
  }

  @Test
  public void findReportInjectionresult_WhenHasRecord() throws Exception {
    Mockito.when(injectionResultServiceImpl.findReportInjectionresult())
        .thenReturn(Arrays.asList(object, object1));
    assertEquals(injectionResultServiceImpl.findReportInjectionresult().size(),
        2);
    Mockito.verify(injectionResultRepository, Mockito.times(1))
        .findReportInjectionresult();
  }

  @Test
  public void findChartInjectionresult() throws Exception {
    Mockito.when(injectionResultServiceImpl.findChartInjectionresult(2020))
        .thenReturn(Arrays.asList());

    assertEquals(
        injectionResultServiceImpl.findChartInjectionresult(2020).size(), 0);
    Mockito.verify(injectionResultRepository, Mockito.times(1))
        .findChartInjectionresult(2020);
  }

  @Test
  public void findChartInjectionresult_WhenHasRecord() throws Exception {
    Mockito.when(injectionResultServiceImpl.findChartInjectionresult(2018))
        .thenReturn(Arrays.asList(object2, object3));

    assertEquals(
        injectionResultServiceImpl.findChartInjectionresult(2018).size(), 2);
    Mockito.verify(injectionResultRepository, Mockito.times(1))
        .findChartInjectionresult(2018);
  }
}
