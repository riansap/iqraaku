import 'package:dio/dio.dart';
import 'package:iqraaku/core/error/exceptions.dart';
import 'package:iqraaku/core/services/api_service.dart';
import '../../domain/entities/surah_detail_entity.dart';

abstract class SurahDetailRemoteDataSource {
  Future<SurahDetailEntity> getSurahDetail(int number);
}

class SurahDetailRemoteDataSourceImpl implements SurahDetailRemoteDataSource {
  final ApiService apiService;

  SurahDetailRemoteDataSourceImpl({required this.apiService});

  @override
  Future<SurahDetailEntity> getSurahDetail(int number) async {
    try {
      final response =
          await apiService.get('surah/$number', query: {'lang': 'id'});

      if (response.statusCode == 200) {
        final json = response.data['data'];
        return SurahDetailEntity.fromJson(json);
      } else {
        throw ServerException();
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.sendTimeout) {
        throw NetworkException(message: 'Failed to connect to the network');
      }
      throw ServerException();
    } catch (_) {
      throw ServerException();
    }
  }
}
