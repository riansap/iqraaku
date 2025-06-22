import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_entity.freezed.dart';
part 'name_entity.g.dart';

@freezed
class ArabicNameEntity with _$ArabicNameEntity {
  const factory ArabicNameEntity({
    required String long,
    required String short,
  }) = _ArabicNameEntity;

  factory ArabicNameEntity.fromJson(Map<String, dynamic> json) =>
      _$ArabicNameEntityFromJson(json);
}

@freezed
class LatinNameEntity with _$LatinNameEntity {
  const factory LatinNameEntity({
    required String long,
    required String short,
  }) = _LatinNameEntity;

  factory LatinNameEntity.fromJson(Map<String, dynamic> json) =>
      _$LatinNameEntityFromJson(json);
}

@freezed
class NameEntity with _$NameEntity {
  const factory NameEntity({
    required ArabicNameEntity arabic,
    required LatinNameEntity latin,
  }) = _NameEntity;

  factory NameEntity.fromJson(Map<String, dynamic> json) =>
      _$NameEntityFromJson(json);
}
