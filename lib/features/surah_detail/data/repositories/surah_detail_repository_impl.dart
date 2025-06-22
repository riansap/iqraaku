import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/surah_detail_entity.dart';
import '../../domain/repositories/surah_detail_repository.dart';
import '../datasources/surah_detail_remote_datasource.dart';

class SurahDetailRepositoryImpl implements SurahDetailRepository {
  final SurahDetailRemoteDataSource remoteDataSource;

  SurahDetailRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SurahDetailEntity>> getSurahDetail(int number) async {
    try {
      final result = await remoteDataSource.getSurahDetail(number);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure());
    } on NetworkException {
      return const Left(NetworkFailure());
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
