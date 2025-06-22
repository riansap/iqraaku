import 'package:get/get.dart';
import 'package:iqraaku/routes/app_routes.dart';

import '../../../surah_list/presentation/controllers/surah_list_controller.dart';
import '../../../user_preferences/presentation/controllers/user_preferences_controller.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initApp();
  }

  void _initApp() async {
    await Future.wait<void>(
      [
        Get.find<SurahListController>().surahService.fetchSurahs(),
        Get.find<UserPreferencesController>().loadPrefs(),
      ],
    );
    await Future.delayed(const Duration(seconds: 1));
    Get.offAllNamed(AppRoutes.onboarding);
  }
}
