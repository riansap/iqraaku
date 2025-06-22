import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/surah_detail_entity.dart';
import '../repositories/surah_detail_repository.dart';

class GetSurahDetailUseCase implements UseCase<SurahDetailEntity, int> {
  final SurahDetailRepository repository;

  GetSurahDetailUseCase(this.repository);

  @override
  Future<Either<Failure, SurahDetailEntity>> call(int params) async {
    return await repository.getSurahDetail(params);
  }
}
