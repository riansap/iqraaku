import 'package:get/get.dart';
import 'package:iqraaku/routes/app_routes.dart';

class OnboardingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void goToHome() {
    Get.offNamed(AppRoutes.home);
  }
}
