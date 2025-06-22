import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iqraaku/core/enums/theme.dart' as theme_enum;

import 'core/bindings/initial_binding.dart';
import 'core/enums/language.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_controller.dart';
import 'features/last_read/data/models/last_read_model.dart';
import 'features/user_preferences/data/models/user_preferences_model.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'routes/route_observer.dart';

Future<void> preloadAppFonts() async {
  try {
    await GoogleFonts.getFont('Poppins');
    await GoogleFonts.getFont('Philosopher');
    await GoogleFonts.getFont('Amiri');
    await GoogleFonts.getFont('Noto Sans');
  } catch (e) {
    print("Error preloading Google Fonts: $e");
  }
}

void main() async {
  // ensure widget binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // init splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // initialize hive
  await Hive.initFlutter();

  // register adapter
  Hive.registerAdapter(UserPreferencesModelAdapter());
  Hive.registerAdapter(LanguageAdapter());
  Hive.registerAdapter(theme_enum.AppThemeAdapter());
  Hive.registerAdapter(LastReadModelAdapter());

  // open box untuk user prefs
  await Hive.openBox<UserPreferencesModel>('user_preferences_box');
  await Hive.openBox<LastReadModel>('last_read_box');

  // load theme from prefs
  final themeController = Get.put(ThemeController());
  await themeController.loadThemeFromPrefs();

  // preload fonts
  await preloadAppFonts();

  // orientation portrait only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    // remove splash screen ketika aplikasi ready
    FlutterNativeSplash.remove();
    return ScreenUtilInit(
      designSize: const Size(374, 812),
      minTextAdapt: false,
      builder: (context, child) {
        return Obx(
          () => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Iqraaku',
            initialBinding: InitialBinding(),
            initialRoute: AppRoutes.splash,
            navigatorObservers: [routeObserver],
            getPages: AppPages.pages,
            defaultTransition: Transition.fade,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: _themeController.themeMode.value,
          ),
        );
      },
    );
  }
}
