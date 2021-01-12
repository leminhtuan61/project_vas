package fa.appcode.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import fa.appcode.entities.InjectionResult;
import fa.appcode.entities.Vaccine;
import fa.appcode.service.InjectionResultService;
import fa.appcode.service.VaccineService;

@RestController
@RequestMapping(value = "api/injectionResult")
public class InjectionResultRestController {
  @Autowired
  private InjectionResultService injectionResultService;

  @Autowired
  private VaccineService vaccineService;

  /**
   * The melthod get all InjectionResult from db.
   * @return list of InjectionResult.
   * @throws Exception if error.
   */
  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public ResponseEntity<List<InjectionResult>> getAllInjectionResult()
      throws Exception {
    List<InjectionResult> injectionResults = injectionResultService.findAll();
    return new ResponseEntity<List<InjectionResult>>(injectionResults,
        HttpStatus.OK);
  }

  /**
   * The method get Vaccine from db by vaccine id.
   * 
   * @param vaccineTypeId.
   * @return a vaccine.
   */
  @GetMapping(value = "/findVaccine", 
      produces = MediaType.APPLICATION_JSON_VALUE)
  public ResponseEntity<String> getVaccineByVaccineTypeId(
      @RequestParam(value = "vaccineTypeId", 
      required = false) Integer vaccineTypeId) {
    List<Vaccine> findVaccine;
    if (vaccineTypeId == null) {
      findVaccine = vaccineService.findAllVaccine();
    } else {
      findVaccine = vaccineService.findVaccineByVaccineType(vaccineTypeId);
    }
    try {
      String deserializedValue = new ObjectMapper()
          .writeValueAsString(findVaccine);
      return new ResponseEntity<>(deserializedValue, HttpStatus.OK);
    } catch (JsonProcessingException e) {
      e.printStackTrace();
      return new ResponseEntity<>("Error parsing list: " + e.getMessage(),
          HttpStatus.BAD_REQUEST);
    }
  }

  /**
   * Add Injection Result using Rest.
   *
   * @param injectionResult
   *          RequestBody InjectionResult.
   * @return Response Entity Injection Result.
   */
  @RequestMapping(value = "/addInjection", method = RequestMethod.POST)
  public ResponseEntity<InjectionResult> createInjection(
      @RequestBody InjectionResult injectionResult) {
    try {
      InjectionResult savedInjectionResult = injectionResultService
          .save(injectionResult);
      return new ResponseEntity<>(savedInjectionResult, HttpStatus.CREATED);
    } catch (Exception e) {
      return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
    }

  }

  /**
   * Update Injection Result using Rest.
   *
   * @param injectionResultId
   *          passed id to update an Injection Result.
   * @param injectionResult
   *          RequestBody Injection Reusult.
   * @return new ResponseEntity<>.
   */
  @PutMapping(value = "/updateInjection/{injectionResultId}")
  public ResponseEntity<InjectionResult> updateInjection(
      @PathVariable("injectionResultId") Integer injectionResultId,
      @RequestBody InjectionResult injectionResult) {
    try {
      return new ResponseEntity<>(injectionResultService.save(injectionResult),
          HttpStatus.OK);
    } catch (Exception e) {
      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
  }

  /**
   * Delete Injection Result by ID.
   *
   * @param injectionResultId
   *          to delete an Injection Result.
   * @return ResponseEntity void.
   * @throws Exception
   *           when you have an error.
   */
  @DeleteMapping(value = "deleteInjection/{injectionResultId}")
  public ResponseEntity<Void> deleteInjection(
      @PathVariable("injectionResultId") Integer injectionResultId)
      throws Exception {
    injectionResultService.delete(injectionResultId);
    return new ResponseEntity<Void>(HttpStatus.OK);
  }
}
