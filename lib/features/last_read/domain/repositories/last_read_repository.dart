import 'package:dartz/dartz.dart';
import '../entities/last_read_entity.dart';
import '../../../../core/error/failures.dart';

abstract class LastReadRepository {
  Future<Either<Failure, LastReadEntity?>> load();
  Future<Either<Failure, Unit>> save(LastReadEntity lastRead);
}
