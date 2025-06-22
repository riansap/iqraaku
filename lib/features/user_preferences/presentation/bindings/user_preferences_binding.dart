import 'package:get/get.dart';
import '../../data/datasources/user_preferences_local_datasource.dart';
import '../../data/repositories/user_preferences_repository_impl.dart';
import '../../domain/repositories/user_preferences_repository.dart';
import '../../presentation/controllers/user_preferences_controller.dart';

class UserPreferencesBinding extends Bindings {
  @override
  void dependencies() {
    // inject datasource
    Get.lazyPut(
      () => UserPreferencesLocalDataSource(),
    );
    // inject repository
    Get.lazyPut<UserPreferencesRepository>(
      () => UserPreferencesRepositoryImpl(
        Get.find(),
      ),
    );
    // inject controller
    Get.lazyPut(
      () => UserPreferencesController(
        Get.find(),
      ),
    );
  }
}
