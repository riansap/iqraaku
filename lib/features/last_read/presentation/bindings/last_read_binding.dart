import 'package:get/get.dart';
import '../../data/datasources/last_read_local_datasource.dart';
import '../../data/repositories/last_read_repository_impl.dart';
import '../../domain/repositories/last_read_repository.dart';
import '../../domain/usecases/get_last_read_usecase.dart';
import '../../domain/usecases/save_last_read_usecase.dart';
import '../../presentation/controllers/last_read_controller.dart';

class LastReadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LastReadLocalDataSource(),
    );
    Get.lazyPut<LastReadRepository>(
      () => LastReadRepositoryImpl(
        Get.find(),
      ),
    );
    Get.lazyPut<GetLastReadUseCase>(
      () => GetLastReadUseCase(
        Get.find(),
      ),
    );
    Get.lazyPut<SaveLastReadUseCase>(
      () => SaveLastReadUseCase(
        Get.find(),
      ),
    );
    Get.lazyPut<LastReadController>(
      () => LastReadController(
        getLastRead: Get.find(),
        saveLastRead: Get.find(),
      ),
    );
  }
}
