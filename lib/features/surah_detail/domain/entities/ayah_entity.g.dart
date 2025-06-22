// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahEntityImpl _$$AyahEntityImplFromJson(Map<String, dynamic> json) =>
    _$AyahEntityImpl(
      sequence:
          SequenceEntity.fromJson(json['sequence'] as Map<String, dynamic>),
      juz: (json['juz'] as num).toInt(),
      manzil: (json['manzil'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      ruku: (json['ruku'] as num).toInt(),
      hizb: (json['hizb'] as num).toInt(),
      sajda: const SajdaConverter().fromJson(json['sajda']),
      text: json['text'] as String,
      transliteration: json['transliteration'] as String,
      translation: json['translation'] as String,
      tafsir: json['tafsir'] as String?,
      recitation: Map<String, String>.from(json['recitation'] as Map),
    );

Map<String, dynamic> _$$AyahEntityImplToJson(_$AyahEntityImpl instance) =>
    <String, dynamic>{
      'sequence': instance.sequence,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizb': instance.hizb,
      'sajda': const SajdaConverter().toJson(instance.sajda),
      'text': instance.text,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'tafsir': instance.tafsir,
      'recitation': instance.recitation,
    };
