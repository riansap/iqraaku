import 'package:dartz/dartz.dart';
import '../../../../core/domain/entities/surah_entity.dart';
import '../../../../core/error/failures.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<SurahEntity>>> getAllSurahs();
}
