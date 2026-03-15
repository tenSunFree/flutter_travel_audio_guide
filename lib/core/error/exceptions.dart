class ServerException implements Exception {
  ServerException(this.message);
  final String message;

  @override
  String toString() => message;
}

class DownloadException implements Exception {
  DownloadException(this.message);
  final String message;

  @override
  String toString() => message;
}

class LocalStorageException implements Exception {
  LocalStorageException(this.message);
  final String message;

  @override
  String toString() => message;
}
