import '../intergrade/configs/tradeApp_config.dart';


class AppConfig {
  static final String appid = "wx2f40ccdc0d1f9217";

  //debug :1000�룬release:10��
  static final int netwait = isInDebugMode() ? 1000000 : 10000;
  static final String universalLink = "https://your.univerallink.com/link/";

  static Map<String, String> BASE_URLS = {
    tradeAppBaseUrlKey: "http://192.168.43.100:8080/tradeApp/",

  };


  static bool isInDebugMode() {
    bool inDebugMode = false;
    //���debugģʽ�»ᴥ����ֵ

    assert(inDebugMode = true);
    return inDebugMode;
  }
}

