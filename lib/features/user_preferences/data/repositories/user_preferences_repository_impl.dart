import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_preferences.dart';
import '../../domain/repositories/user_preferences_repository.dart';
import '../datasources/user_preferences_local_datasource.dart';

class UserPreferencesRepositoryImpl implements UserPreferencesRepository {
  final UserPreferencesLocalDataSource localDataSource;

  UserPreferencesRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, UserPreferences?>> load() async {
    try {
      final prefs = await localDataSource.load();
      return Right(prefs);
    } on CacheException catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> save(UserPreferences preferences) async {
    try {
      await localDataSource.save(preferences);
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure());
    }
  }
}
