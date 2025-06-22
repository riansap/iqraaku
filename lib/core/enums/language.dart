import 'package:hive/hive.dart';

part 'language.g.dart';

@HiveType(typeId: 2)
enum Language {
  @HiveField(0)
  en,

  @HiveField(1)
  id,
}
