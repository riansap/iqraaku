import 'package:get/get.dart';
import '../../../../core/services/api_service.dart';
import '../../data/datasources/surah_detail_remote_datasource.dart';
import '../../data/repositories/surah_detail_repository_impl.dart';
import '../../domain/repositories/surah_detail_repository.dart';
import '../../domain/usecases/get_surah_detail_usecase.dart';
import '../controllers/surah_detail_controller.dart';

class SurahDetailBinding extends Bindings {
  @override
  void dependencies() {
    // inject datasource
    Get.lazyPut<SurahDetailRemoteDataSource>(
      () => SurahDetailRemoteDataSourceImpl(apiService: Get.find()),
    );

    // inject repository
    Get.lazyPut<SurahDetailRepository>(
      () => SurahDetailRepositoryImpl(remoteDataSource: Get.find()),
    );

    // inject usecase
    Get.lazyPut<GetSurahDetailUseCase>(
      () => GetSurahDetailUseCase(Get.find()),
    );

    // inject controller
    Get.lazyPut(() => SurahDetailController(
          getSurahDetailUseCase: Get.find(),
          saveLastReadUseCase: Get.find(),
        ));
  }
}
