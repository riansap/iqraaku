import 'package:dartz/dartz.dart';
import '../../../../core/domain/entities/surah_entity.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/surah_repository.dart';
import '../datasources/surah_list_remote_datasource.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahRemoteDataSource remoteDataSource;

  SurahRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<SurahEntity>>> getAllSurahs() async {
    try {
      final remoteSurahs = await remoteDataSource.getAllSurahs();
      return Right(remoteSurahs);
    } on ServerException {
      return const Left(ServerFailure());
    } on NetworkException {
      return const Left(NetworkFailure());
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
