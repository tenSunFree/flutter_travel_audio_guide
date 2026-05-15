import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
sealed class AppException with _$AppException implements Exception {
  const factory AppException.server(String message) = ServerException;

  const factory AppException.download(String message) = DownloadException;

  const factory AppException.localStorage(String message) =
      LocalStorageException;
}
