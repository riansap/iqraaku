import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqraaku/core/enums/theme.dart';
import '../../../../core/enums/language.dart';

part 'user_preferences.freezed.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required String username,
    required Language language,
    required AppTheme theme,
  }) = _UserPreferences;
}
