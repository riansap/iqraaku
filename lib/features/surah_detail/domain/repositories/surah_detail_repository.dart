import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/surah_detail_entity.dart';

abstract class SurahDetailRepository {
  Future<Either<Failure, SurahDetailEntity>> getSurahDetail(int number);
}
