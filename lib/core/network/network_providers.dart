import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_dio/sentry_dio.dart'; // ← 新增
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
  // Sentry HTTP tracing (added at the beginning to make the span encompass the entire request cycle)
  dio.addSentry(
    // 4xx/5xx automatically reported to Sentry
    captureFailedRequests: true,
  );
  // Talker debug log (added at the end for local development console use)
  dio.interceptors.add(
    TalkerDioLogger(
      talker: AppLogger.talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: false,
        printResponseData: true,
        requestFilter: DioLogFilter.shouldLogRequest,
        responseFilter: DioLogFilter.shouldLogResponse,
        errorFilter: DioLogFilter.shouldLogError,
      ),
    ),
  );
  return dio;
});
