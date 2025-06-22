import 'package:get/get.dart';
import '../../../last_read/presentation/bindings/last_read_binding.dart';
import '../../../surah_list/presentation/controllers/surah_list_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut(
      () => SurahListController(
        Get.find(),
      ),
    );

    // get last read
    LastReadBinding().dependencies();
  }
}
