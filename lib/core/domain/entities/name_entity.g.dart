// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArabicNameEntityImpl _$$ArabicNameEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ArabicNameEntityImpl(
      long: json['long'] as String,
      short: json['short'] as String,
    );

Map<String, dynamic> _$$ArabicNameEntityImplToJson(
        _$ArabicNameEntityImpl instance) =>
    <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
    };

_$LatinNameEntityImpl _$$LatinNameEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LatinNameEntityImpl(
      long: json['long'] as String,
      short: json['short'] as String,
    );

Map<String, dynamic> _$$LatinNameEntityImplToJson(
        _$LatinNameEntityImpl instance) =>
    <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
    };

_$NameEntityImpl _$$NameEntityImplFromJson(Map<String, dynamic> json) =>
    _$NameEntityImpl(
      arabic: ArabicNameEntity.fromJson(json['arabic'] as Map<String, dynamic>),
      latin: LatinNameEntity.fromJson(json['latin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameEntityImplToJson(_$NameEntityImpl instance) =>
    <String, dynamic>{
      'arabic': instance.arabic,
      'latin': instance.latin,
    };
