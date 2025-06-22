import 'package:dartz/dartz.dart';

import 'package:iqraaku/core/error/failures.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/last_read_entity.dart';
import '../repositories/last_read_repository.dart';

class SaveLastReadUseCase implements UseCase<Unit, LastReadEntity> {
  final LastReadRepository repository;

  SaveLastReadUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(LastReadEntity params) async {
    return await repository.save(params);
  }
}
