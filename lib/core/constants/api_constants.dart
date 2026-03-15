class ApiConstants {
  const ApiConstants._();

  static const String baseUrl = 'https://www.travel.taipei/open-api';
  static const String defaultLang = 'zh-tw';
  static const int defaultPage = 1;
  static const int pageSize = 30;
  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
  static const Map<String, String> defaultHeaders = {
    'accept': 'application/json',
  };
}
