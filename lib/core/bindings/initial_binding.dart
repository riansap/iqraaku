import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../features/user_preferences/data/models/user_preferences_model.dart';
import '../../features/user_preferences/data/datasources/user_preferences_local_datasource.dart';
import '../../features/user_preferences/data/repositories/user_preferences_repository_impl.dart';
import '../../features/user_preferences/domain/repositories/user_preferences_repository.dart';
import '../../features/user_preferences/presentation/controllers/user_preferences_controller.dart';

import '../../features/surah_list/data/datasources/surah_list_remote_datasource.dart';
import '../../features/surah_list/data/repositories/surah_repository_impl.dart';
import '../../features/surah_list/domain/repositories/surah_repository.dart';
import '../../features/surah_list/domain/usecases/get_all_surahs_usecase.dart';
import '../../features/surah_list/presentation/controllers/surah_list_controller.dart';

import '../services/api_service.dart';
import '../services/surah_service.dart';
import '../theme/theme_controller.dart';
import '../enums/theme.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // cek koneksi internet

    // ThemeController dari prefs Hive
    final box = Hive.box<UserPreferencesModel>('user_preferences_box');
    final userPrefs = box.get('prefs_key');
    final theme = userPrefs?.theme ?? AppTheme.light;

    Get.put(ThemeController()..setTheme(theme), permanent: true);

    // API Service
    Get.put<ApiService>(ApiService(), permanent: true);

    // preload surah list
    Get.put<SurahRemoteDataSource>(
      SurahRemoteDataSourceImpl(
        apiService: Get.find(),
      ),
      permanent: true,
    );

    Get.put<SurahRepository>(
      SurahRepositoryImpl(
        remoteDataSource: Get.find(),
      ),
      permanent: true,
    );

    Get.put<GetAllSurahsUseCase>(
      GetAllSurahsUseCase(
        Get.find(),
      ),
      permanent: true,
    );

    Get.put<SurahService>(
      SurahService(
        getAllSurahsUseCase: Get.find(),
      ),
      permanent: true,
    );

    Get.lazyPut(
      () => SurahListController(
        Get.find(),
      ),
    );

    // preload user preferences
    Get.put<UserPreferencesLocalDataSource>(
      UserPreferencesLocalDataSource(),
      permanent: true,
    );

    Get.put<UserPreferencesRepository>(
      UserPreferencesRepositoryImpl(
        Get.find(),
      ),
      permanent: true,
    );

    Get.put<UserPreferencesController>(
      UserPreferencesController(
        Get.find(),
      ),
      permanent: true,
    );
  }
}
