import 'package:get/get.dart';
import '../../../last_read/domain/entities/last_read_entity.dart';
import '../../../last_read/domain/usecases/save_last_read_usecase.dart';
import '../../domain/entities/surah_detail_entity.dart';
import '../../domain/usecases/get_surah_detail_usecase.dart';

class SurahDetailController extends GetxController
    with StateMixin<SurahDetailEntity> {
  final GetSurahDetailUseCase getSurahDetailUseCase;
  final SaveLastReadUseCase saveLastReadUseCase;

  SurahDetailController({
    required this.getSurahDetailUseCase,
    required this.saveLastReadUseCase,
  });

  late final int surahNumber;

  @override
  void onInit() {
    super.onInit();
    surahNumber = Get.arguments as int;
    fetchSurahDetail(surahNumber);
  }

  Future<void> fetchSurahDetail(int number) async {
    change(null, status: RxStatus.loading());

    final result = await getSurahDetailUseCase(number);

    result.fold(
      (failure) => change(null, status: RxStatus.error(failure.message)),
      (data) {
        change(data, status: RxStatus.success());

        // simpan last read setelah berhasil ambil data surah
        final lastRead = LastReadEntity(
          sequence: data.sequence,
          surahName: data.name.latin.short,
          ayahCount: data.ayahCount,
        );

        saveLastReadUseCase(lastRead);
      },
    );
  }
}
