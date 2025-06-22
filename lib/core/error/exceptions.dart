class GeneralException implements Exception {
  final String message;

  const GeneralException({required this.message});
}

class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException({
    this.message = 'Something went wrong.',
    this.statusCode,
  });
}

class NetworkException implements Exception {
  final String message;

  const NetworkException({
    required this.message,
  });
}

class CacheException implements Exception {
  final String message;

  const CacheException({
    required this.message,
  });
}
