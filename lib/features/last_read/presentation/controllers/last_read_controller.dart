import 'package:get/get.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../routes/app_routes.dart';
import '../../domain/entities/last_read_entity.dart';
import '../../domain/usecases/get_last_read_usecase.dart';
import '../../domain/usecases/save_last_read_usecase.dart';

class LastReadController extends GetxController
    with StateMixin<LastReadEntity?> {
  final GetLastReadUseCase getLastRead;
  final SaveLastReadUseCase saveLastRead;

  LastReadController({
    required this.getLastRead,
    required this.saveLastRead,
  });

  @override
  void onInit() {
    super.onInit();
    fetchLastRead();
  }

  void fetchLastRead() async {
    change(null, status: RxStatus.loading());

    final result = await getLastRead(NoParams());

    result.fold(
      (failure) => change(null, status: RxStatus.error(failure.message)),
      (data) => change(data, status: RxStatus.success()),
    );
  }

  Future<void> save(LastReadEntity entity) async {
    await saveLastRead(entity);
  }

  void toSurahDetail(LastReadEntity lastRead) {
    Get.toNamed(
      AppRoutes.surahDetail,
      arguments: lastRead.sequence,
    );
  }
}
