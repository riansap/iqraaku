import 'package:hive/hive.dart';
import 'package:iqraaku/core/enums/theme.dart';
import '../../../../core/enums/language.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user_preferences_model.dart';
import '../../domain/entities/user_preferences.dart';

class UserPreferencesLocalDataSource {
  static const String boxName = 'user_preferences_box';
  static const String key = 'prefs';

  Future<Box<UserPreferencesModel>> _openBox() async {
    try {
      return await Hive.openBox<UserPreferencesModel>(boxName);
    } catch (_) {
      throw const CacheException(message: 'Failed to open Hive box');
    }
  }

  Future<UserPreferences?> load() async {
    final box = await _openBox();
    final model = box.get(key);

    if (model != null) {
      return model.toEntity();
    }

    // berikan default value saat hive kosong
    return const UserPreferences(
      username: 'Guest',
      language: Language.en,
      theme: AppTheme.light,
    );
  }

  Future<void> save(UserPreferences preferences) async {
    final box = await _openBox();

    // simpan ke hive
    await box.put(
      key,
      UserPreferencesModel.fromEntity(preferences),
    );
  }
}
