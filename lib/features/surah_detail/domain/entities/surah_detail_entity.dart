import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/converters/pre_bismillah_converter.dart';
import 'ayah_entity.dart';
import 'package:iqraaku/core/domain/entities/pre_bismillah_entity.dart';
import 'package:iqraaku/core/domain/entities/name_entity.dart';
import 'package:iqraaku/core/domain/entities/type_entity.dart';

part 'surah_detail_entity.freezed.dart';
part 'surah_detail_entity.g.dart';

@freezed
class SurahDetailEntity with _$SurahDetailEntity {
  const factory SurahDetailEntity({
    required int sequence,
    required int ayahCount,
    required TypeEntity type,
    required NameEntity name,
    required String translation,
    String? tafsir,
    @PreBismillahConverter() PreBismillahEntity? preBismillah,
    required Map<String, String> recitation,
    required List<AyahEntity> ayah,
  }) = _SurahDetailEntity;

  factory SurahDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailEntityFromJson(json);
}
