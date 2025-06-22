import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import '../../../../core/enums/language.dart';
import '../../../../core/enums/theme.dart';
import '../../domain/entities/user_preferences.dart';

part 'user_preferences_model.g.dart';

@HiveType(typeId: 1)
class UserPreferencesModel extends Equatable {
  @HiveField(0)
  final String username;

  @HiveField(1)
  final Language language;

  @HiveField(2)
  final AppTheme theme;

  const UserPreferencesModel({
    required this.username,
    required this.language,
    required this.theme,
  });

  factory UserPreferencesModel.fromEntity(UserPreferences entity) {
    return UserPreferencesModel(
      username: entity.username,
      language: entity.language,
      theme: entity.theme,
    );
  }

  UserPreferences toEntity() {
    return UserPreferences(
      username: username,
      language: language,
      theme: theme,
    );
  }

  @override
  List<Object?> get props => [username, language, theme];
}
