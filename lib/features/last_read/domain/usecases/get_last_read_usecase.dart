import 'package:dartz/dartz.dart';
import 'package:iqraaku/core/error/failures.dart';
import 'package:iqraaku/core/usecase/usecase.dart';

import '../entities/last_read_entity.dart';
import '../repositories/last_read_repository.dart';

class GetLastReadUseCase implements UseCase<LastReadEntity?, NoParams> {
  final LastReadRepository repository;

  GetLastReadUseCase(this.repository);

  @override
  Future<Either<Failure, LastReadEntity?>> call(NoParams params) async {
    return await repository.load();
  }
}
