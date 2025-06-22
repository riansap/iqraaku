// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahEntityImpl _$$SurahEntityImplFromJson(Map<String, dynamic> json) =>
    _$SurahEntityImpl(
      sequence: (json['sequence'] as num).toInt(),
      ayahCount: (json['ayahCount'] as num).toInt(),
      type: TypeEntity.fromJson(json['type'] as Map<String, dynamic>),
      name: NameEntity.fromJson(json['name'] as Map<String, dynamic>),
      translation: json['translation'] as String,
      recitationInfo: Map<String, String>.from(json['recitation'] as Map),
      tafsir: json['tafsir'] as String?,
      preBismillah:
          const PreBismillahConverter().fromJson(json['preBismillah']),
    );

Map<String, dynamic> _$$SurahEntityImplToJson(_$SurahEntityImpl instance) =>
    <String, dynamic>{
      'sequence': instance.sequence,
      'ayahCount': instance.ayahCount,
      'type': instance.type,
      'name': instance.name,
      'translation': instance.translation,
      'recitation': instance.recitationInfo,
      'tafsir': instance.tafsir,
      'preBismillah':
          const PreBismillahConverter().toJson(instance.preBismillah),
    };
