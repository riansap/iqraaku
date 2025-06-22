import 'package:dio/dio.dart';
import '../../../../core/domain/entities/surah_entity.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/services/api_service.dart';

abstract class SurahRemoteDataSource {
  Future<List<SurahEntity>> getAllSurahs();
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  final ApiService apiService;

  SurahRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<SurahEntity>> getAllSurahs() async {
    try {
      final response = await apiService.get('surah', query: {'lang': 'id'});

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => SurahEntity.fromJson(json)).toList();
      } else {
        throw ServerException();
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.sendTimeout) {
        throw NetworkException(
          message: 'Failed to connect to the network',
        );
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }
}
