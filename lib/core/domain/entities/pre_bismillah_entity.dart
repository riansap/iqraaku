import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_bismillah_entity.freezed.dart';
part 'pre_bismillah_entity.g.dart';

@freezed
class PreBismillahEntity with _$PreBismillahEntity {
  const factory PreBismillahEntity({
    required String text,
    required String translation,
    required String transliteration,
  }) = _PreBismillahEntity;

  factory PreBismillahEntity.fromJson(Map<String, dynamic> json) =>
      _$PreBismillahEntityFromJson(json);
}
