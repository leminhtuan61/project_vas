package fa.appcode.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.service.CustomerService;
import fa.appcode.service.InjectionResultService;
import fa.appcode.service.VaccineService;

@RestController
public class ChartReportController {

  @Autowired
  private InjectionResultService injectionResultService;

  @Autowired
  private CustomerService customerService;

  @Autowired
  private VaccineService vaccineService;

  /**
   * The method handle req "/chart/injectResult" and send list interger
   * corresponding to number of injections per month in 2020.
   * 
   * @return Send list interger corresponding to the number of injections per
   *         month
   * @throws Exception if error.
   */
  @GetMapping("/chart/injectResult")
  public ResponseEntity<List<Integer>> getDataChartInjectionResult()
      throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = injectionResultService
        .findChartInjectionresult(2020);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }

  /**
   * The method handle req "/chart/injectResult/{year}" and send list interger
   * corresponding to the number of injections per month for the year entered.
   * 
   * @param year.
   * @return list interger corresponding to the number of injections per month
   *         for the year entered.
   * @throws Exception if error.
   */
  @GetMapping("/chart/injectResult/{year}")
  public ResponseEntity<List<Integer>> getDataChartInjectionResultYear(
      @PathVariable(value = "year") int year) throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = injectionResultService
        .findChartInjectionresult(year);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }

  /**
   * The method handle req "/chart/customer" and send list interger
   * corresponding to number of injections per month in 2020.
   * 
   * @return Send list interger corresponding to the number of injections per
   *         month
   * @throws Exception if error.
   */
  @GetMapping("/chart/customer")
  public ResponseEntity<List<Integer>> getDataChartCustomerResult()
      throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = customerService.findReportCustomerChar(2020);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }

  /**
   * The method handle req "/chart/customer/{year}" and send list interger
   * corresponding to the number of injections per month for the year entered.
   * 
   * @param year.
   * @return list interger corresponding to the number of injections per month
   *         for the year entered.
   * @throws Exception if error.
   */
  @GetMapping("/chart/customer/{year}")
  public ResponseEntity<List<Integer>> getDataChartCustomerYear(
      @PathVariable(value = "year") int year) throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = customerService.findReportCustomerChar(year);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }

  /**
   * The method handle req "/chart/vaccine" and send list interger corresponding
   * to number of injections per month in 2020.
   * 
   * @return Send list interger corresponding to the number of injections per
   *         month
   * @throws Exception if error.
   */
  @GetMapping("/chart/vaccine")
  public ResponseEntity<List<Integer>> getDataChartVaccineResult()
      throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = vaccineService.findReportVaccineChar(2020);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }

  /**
   * The method handle req "/chart/vaccine/{year}" and send list interger
   * corresponding to the number of injections per month for the year entered.
   * 
   * @param year.
   * @return list interger corresponding to the number of injections per month
   *         for the year entered.
   * @throws Exception if error.
   */
  @GetMapping("/chart/vaccine/{year}")
  public ResponseEntity<List<Integer>> getDataChartVaccineYear(
      @PathVariable(value = "year") int year) throws Exception {

    List<Integer> integers = new ArrayList<>(
        Arrays.asList(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0));
    List<Object[]> objects = vaccineService.findReportVaccineChar(year);
    LogUtils.getLogger().info(objects);
    for (Object[] object : objects) {

      LogUtils.getLogger().info(objects);
      integers.set((int) object[0] - 1, (int) (long) object[1]);
    }
    LogUtils.getLogger().info(integers);
    return new ResponseEntity<>(integers, HttpStatus.OK);
  }
}
