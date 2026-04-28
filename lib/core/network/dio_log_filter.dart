import 'package:dio/dio.dart';

/// Controls which API paths should be logged
/// Paths added to _blockedPaths will be excluded and will not appear in the console.
class DioLogFilter {
  const DioLogFilter._();

  /// Add the path where you don't want to display logs here
  static const List<String> _blockedPaths = [
    // '/Media/Audio',
    // '/Events/Activity',
    // '/Attractions/All',
  ];

  static bool _shouldLog(String path) {
    return !_blockedPaths.any((blocked) => path.contains(blocked));
  }

  static bool shouldLogRequest(RequestOptions options) =>
      _shouldLog(options.path);

  static bool shouldLogResponse(Response response) =>
      _shouldLog(response.requestOptions.path);

  static bool shouldLogError(DioException error) =>
      _shouldLog(error.requestOptions.path);
}
