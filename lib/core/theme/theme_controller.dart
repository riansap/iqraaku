import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../features/user_preferences/data/models/user_preferences_model.dart';
import '../enums/theme.dart';

class ThemeController extends GetxController {
  final themeMode = ThemeMode.light.obs;

  Future<void> loadThemeFromPrefs() async {
    final box = Hive.box<UserPreferencesModel>('user_preferences_box');

    // pakai key yang sama saat menyimpan di local_datasource user_preferences
    final prefs = box.get(
      'prefs',
    );
    if (prefs != null) {
      setTheme(prefs.theme);
    }
  }

  void setTheme(AppTheme appTheme) {
    themeMode.value =
        appTheme == AppTheme.dark ? ThemeMode.dark : ThemeMode.light;
  }
}
