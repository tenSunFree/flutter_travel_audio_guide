import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import '../constants/api_constants.dart';
import '../utils/app_logger.dart';
import 'dio_log_filter.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      headers: ApiConstants.defaultHeaders,
      connectTimeout: ApiConstants.connectTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
      sendTimeout: ApiConstants.sendTimeout,
    ),
  );
  dio.interceptors.add(
    TalkerDioLogger(
      talker: AppLogger.talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: false,
        // Complete response body, without truncation
        printResponseData: true,
        requestFilter: DioLogFilter.shouldLogRequest,
        responseFilter: DioLogFilter.shouldLogResponse,
        errorFilter: DioLogFilter.shouldLogError,
      ),
    ),
  );
  return dio;
});
