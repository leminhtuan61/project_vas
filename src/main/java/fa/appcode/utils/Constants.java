package fa.appcode.utils;

public class Constants {
  public static final String CREATE_CUSTOMER_SUCCESS = 
      "Create Customer Successfully.";
  public static final String UPDATE_CUSTOMER_SUCCESS = 
      "Update Customer Successfully.";

  public static final String CREATE_CUSTOMER_FAIL = "Create Customer Fail.";

  public static final String UPDATE_CUSTOMER_FAIL = "Update Customer Fail.";

  public static final String[] AUTHORIZED_REQ_ADMIN = { "/addCustomer",
      "/customer/delete", "/injectionResult/create", "/customer/update",
      "/addCustomer", "/customer/save", "/injectionResult/save",
      "/injectionResult/save", "/injectionResult/edit/{injectionResult}",
      "/injectionResult/update", "/injectionResult/delete/{injectionIds}",
      "/injectionResult/deleteAll", "/news/delete",
      "/news/delete?newsId={newsId}", "/news/create", "/news/save",
      "/news/update/{id}" };
  public static final String[] AUTHORIZED_REQ_ADMIN_USER = { "/listCustomer",
      "/injectionResult/list", "news/list", "/char", "/charCustomer",
      "/charVaccine", "/report/listInject", "/report/listCustomer",
      "/report/listVaccine", "/index" };

}
