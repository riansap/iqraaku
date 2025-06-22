// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequence_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SequenceEntityImpl _$$SequenceEntityImplFromJson(Map<String, dynamic> json) =>
    _$SequenceEntityImpl(
      quran: (json['quran'] as num).toInt(),
      surah: (json['surah'] as num).toInt(),
    );

Map<String, dynamic> _$$SequenceEntityImplToJson(
        _$SequenceEntityImpl instance) =>
    <String, dynamic>{
      'quran': instance.quran,
      'surah': instance.surah,
    };
