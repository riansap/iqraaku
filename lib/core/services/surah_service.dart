import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import '../../../../core/usecase/usecase.dart';
import '../../features/surah_list/domain/usecases/get_all_surahs_usecase.dart';
import '../domain/entities/surah_entity.dart';
import '../error/failures.dart';

class SurahService extends GetxService {
  final GetAllSurahsUseCase getAllSurahsUseCase;

  SurahService({required this.getAllSurahsUseCase});

  final _surahs = <SurahEntity>[].obs;
  final _hasFetched = false.obs;

  List<SurahEntity> get surahs => _surahs;
  bool get hasFetched => _hasFetched.value;

  Future<Either<Failure, List<SurahEntity>>> fetchSurahs() async {
    if (_hasFetched.value) {
      return Right(_surahs);
    }

    final result = await getAllSurahsUseCase(NoParams());
    result.fold(
      (failure) => null, // jangan lempar langsung exception di sini
      (list) {
        _surahs.assignAll(list);
        _hasFetched.value = true;
      },
    );
    return result;
  }

  void clearCache() {
    _surahs.clear();
    _hasFetched.value = false;
  }
}
