import 'package:get/get.dart';
import 'package:iqraaku/features/home/presentation/pages/home_screen.dart';
import 'package:iqraaku/features/onboading/presentation/pages/onboarding_screen.dart';
import 'package:iqraaku/features/surah_detail/presentation/pages/surah_detail_page.dart';
import '../features/home/presentation/bindings/home_binding.dart';
import '../features/onboading/presentation/bindings/onboarding_binding.dart';
import '../features/splash/presentation/bindings/splash_binding.dart';
import '../features/splash/presentation/pages/splash_screen.dart';
import '../features/surah_detail/presentation/bindings/surah_detail_binding.dart';
import '../features/user_preferences/presentation/bindings/user_preferences_binding.dart';
import '../features/user_preferences/presentation/pages/user_preferences_page.dart';
import '../routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.userPreferences,
      page: () => UserPreferencesPage(),
      binding: UserPreferencesBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    // surah
    GetPage(
      name: AppRoutes.surahDetail,
      page: () => SurahDetailPage(),
      binding: SurahDetailBinding(),
    ),
  ];
}
