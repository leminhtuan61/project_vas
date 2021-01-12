package fa.appcode.service;

import static org.junit.Assert.assertEquals;

import java.util.Arrays;

import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import fa.appcode.repository.VaccineRepository;

@RunWith(MockitoJUnitRunner.class)
public class VaccineServiceTest {

  private static Object[] object;
  private static Object[] object1;
  private static Object[] object2;
  private static Object[] object3;

  @Mock
  private VaccineRepository vaccineRepository;

  @InjectMocks
  private VaccineService vaccineService = new VaccineServiceImpl();

  /**
   * Set up some sample for test.
   */
  @BeforeAll
  public static void init() {
    object = new Object[] { "Sputnik V", "COVID-19", 1, "2020-01-01 00:00:00.0",
        "2030-01-01 00:00:00.0", "CDC" };
    object1 = new Object[] { "Havrix", "Hepatitis A", 1,
        "2010-02-06 00:00:00.0", "2035-10-08 00:00:00.0", "CDC" };
    object2 = new Object[] { 2, 2 };
    object3 = new Object[] { 8, 1 };
  }

  @Test
  public void findReportInjectionresult() throws Exception {
    Mockito.when(vaccineRepository.findReportVaccine())
        .thenReturn(Arrays.asList());
    assertEquals(vaccineService.findReportVaccine().size(), 0);
    Mockito.verify(vaccineRepository, Mockito.times(1)).findReportVaccine();
  }

  @Test
  public void findReportInjectionresult_WhenHasRecord() throws Exception {
    Mockito.when(vaccineRepository.findReportVaccine())
        .thenReturn(Arrays.asList(object, object1));
    assertEquals(vaccineService.findReportVaccine().size(), 2);
    Mockito.verify(vaccineRepository, Mockito.times(1)).findReportVaccine();
  }

  @Test
  public void findChartInjectionresult() throws Exception {
    Mockito.when(vaccineRepository.findReportVaccineChar(2020))
        .thenReturn(Arrays.asList());

    assertEquals(vaccineService.findReportVaccineChar(2020).size(), 0);
    Mockito.verify(vaccineRepository, Mockito.times(1))
        .findReportVaccineChar(2020);
  }

  @Test
  public void findChartInjectionresult_WhenHasRecord() throws Exception {
    Mockito.when(vaccineRepository.findReportVaccineChar(2018))
        .thenReturn(Arrays.asList(object2, object3));

    assertEquals(vaccineService.findReportVaccineChar(2018).size(), 2);
    Mockito.verify(vaccineRepository, Mockito.times(1))
        .findReportVaccineChar(2018);
  }

}
