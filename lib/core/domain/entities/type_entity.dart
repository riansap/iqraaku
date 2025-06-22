import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_entity.freezed.dart';
part 'type_entity.g.dart';

@freezed
class TypeEntity with _$TypeEntity {
  const factory TypeEntity({
    required String arabic,
    required String latin,
  }) = _TypeEntity;

  factory TypeEntity.fromJson(Map<String, dynamic> json) =>
      _$TypeEntityFromJson(json);
}
