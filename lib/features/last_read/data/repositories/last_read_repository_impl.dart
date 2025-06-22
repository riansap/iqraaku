import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/last_read_entity.dart';
import '../../domain/repositories/last_read_repository.dart';
import '../datasources/last_read_local_datasource.dart';

class LastReadRepositoryImpl implements LastReadRepository {
  final LastReadLocalDataSource localDataSource;

  LastReadRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, LastReadEntity?>> load() async {
    try {
      final prefs = await localDataSource.load();
      return Right(prefs);
    } on CacheException catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> save(LastReadEntity lastRead) async {
    try {
      await localDataSource.save(lastRead);
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure());
    }
  }
}
