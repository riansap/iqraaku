import 'package:dartz/dartz.dart';
import '../../../../core/domain/entities/surah_entity.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/surah_repository.dart';

class GetAllSurahsUseCase implements UseCase<List<SurahEntity>, NoParams> {
  final SurahRepository repository;

  GetAllSurahsUseCase(this.repository);

  @override
  Future<Either<Failure, List<SurahEntity>>> call(NoParams params) async {
    return await repository.getAllSurahs();
  }
}
