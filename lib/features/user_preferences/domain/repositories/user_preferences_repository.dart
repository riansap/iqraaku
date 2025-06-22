import 'package:dartz/dartz.dart';
import '../entities/user_preferences.dart';
import '../../../../core/error/failures.dart';

abstract class UserPreferencesRepository {
  Future<Either<Failure, UserPreferences?>> load();
  Future<Either<Failure, Unit>> save(UserPreferences preferences);
}
