import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/converters/sajda_converter.dart';
import 'sequence_entity.dart';

part 'ayah_entity.freezed.dart';
part 'ayah_entity.g.dart';

@freezed
class AyahEntity with _$AyahEntity {
  const factory AyahEntity({
    required SequenceEntity sequence,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizb,
    @SajdaConverter() required bool sajda,
    required String text,
    required String transliteration,
    required String translation,
    String? tafsir,
    required Map<String, String> recitation,
  }) = _AyahEntity;

  factory AyahEntity.fromJson(Map<String, dynamic> json) =>
      _$AyahEntityFromJson(json);
}
