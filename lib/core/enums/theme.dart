import 'package:hive/hive.dart';

part 'theme.g.dart';

@HiveType(typeId: 3)
enum AppTheme {
  @HiveField(0)
  light,

  @HiveField(1)
  dark,
}
