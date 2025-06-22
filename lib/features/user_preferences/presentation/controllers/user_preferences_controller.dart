import 'package:get/get.dart';
import 'package:iqraaku/core/enums/theme.dart';
import '../../../../core/enums/language.dart';
import '../../../../core/error/failures.dart';
import '../../../../routes/app_routes.dart';
import '../../domain/entities/user_preferences.dart';
import '../../domain/repositories/user_preferences_repository.dart';

class UserPreferencesController extends GetxController {
  final UserPreferencesRepository repository;

  @override
  void onInit() {
    super.onInit();
    loadPrefs();
  }

  Rxn<UserPreferences> prefs = Rxn();
  Rxn<Failure> failure = Rxn();

  UserPreferencesController(this.repository);

  // load user preferences
  Future<void> loadPrefs() async {
    final result = await repository.load();
    result.fold(
      (fail) => failure.value = fail,
      (data) => prefs.value = data,
    );
  }

  // save user preferences
  Future<void> savePrefs(
    String username,
    Language language,
    AppTheme theme,
  ) async {
    final pref = UserPreferences(
      username: username,
      language: language,
      theme: theme,
    );

    final result = await repository.save(pref);
    result.fold(
      (fail) => failure.value = fail,
      (_) => prefs.value = pref,
    );

    Get.offNamed(AppRoutes.home);
  }
}
