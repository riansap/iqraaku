// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailEntityImpl _$$SurahDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahDetailEntityImpl(
      sequence: (json['sequence'] as num).toInt(),
      ayahCount: (json['ayahCount'] as num).toInt(),
      type: TypeEntity.fromJson(json['type'] as Map<String, dynamic>),
      name: NameEntity.fromJson(json['name'] as Map<String, dynamic>),
      translation: json['translation'] as String,
      tafsir: json['tafsir'] as String?,
      preBismillah:
          const PreBismillahConverter().fromJson(json['preBismillah']),
      recitation: Map<String, String>.from(json['recitation'] as Map),
      ayah: (json['ayah'] as List<dynamic>)
          .map((e) => AyahEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahDetailEntityImplToJson(
        _$SurahDetailEntityImpl instance) =>
    <String, dynamic>{
      'sequence': instance.sequence,
      'ayahCount': instance.ayahCount,
      'type': instance.type,
      'name': instance.name,
      'translation': instance.translation,
      'tafsir': instance.tafsir,
      'preBismillah':
          const PreBismillahConverter().toJson(instance.preBismillah),
      'recitation': instance.recitation,
      'ayah': instance.ayah,
    };
