import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService({Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: 'https://staticquran.vercel.app/api/v1/',
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              responseType: ResponseType.json,
            ));

  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? query,
  }) async {
    return await _dio.get(
      endpoint,
      queryParameters: query,
    );
  }
}
