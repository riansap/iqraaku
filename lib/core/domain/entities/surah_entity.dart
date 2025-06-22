import 'package:freezed_annotation/freezed_annotation.dart';

import 'name_entity.dart';
import 'type_entity.dart';
import 'pre_bismillah_entity.dart';
import '../../../../core/converters/pre_bismillah_converter.dart';

part 'surah_entity.freezed.dart';
part 'surah_entity.g.dart';

@freezed
class SurahEntity with _$SurahEntity {
  const SurahEntity._();

  const factory SurahEntity({
    required int sequence,
    required int ayahCount,
    required TypeEntity type,
    required NameEntity name,
    required String translation,
    @JsonKey(name: 'recitation') required Map<String, String> recitationInfo,
    String? tafsir,
    @JsonKey(name: 'preBismillah')
    @PreBismillahConverter()
    PreBismillahEntity? preBismillah,
  }) = _SurahEntity;

  String get nameLatinLong => name.latin.long;
  String get nameLatinShort => name.latin.short;
  String get nameArabicLong => name.arabic.long;
  String get nameArabicShort => name.arabic.short;
  String get typeLatin => type.latin;
  String? get audioUrl => recitationInfo['audio'];

  factory SurahEntity.fromJson(Map<String, dynamic> json) =>
      _$SurahEntityFromJson(json);
}
