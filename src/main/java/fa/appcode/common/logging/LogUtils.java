package fa.appcode.common.logging;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LogUtils {

  static Logger logger = LogManager.getLogger(LogUtils.class);

  public static Logger getLogger() {
    return logger;
  }

}
