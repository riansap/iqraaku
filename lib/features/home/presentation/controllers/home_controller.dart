import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void goToUserPreferences() {
    Get.toNamed(AppRoutes.userPreferences);
  }
}
