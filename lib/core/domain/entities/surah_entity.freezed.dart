// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahEntity _$SurahEntityFromJson(Map<String, dynamic> json) {
  return _SurahEntity.fromJson(json);
}

/// @nodoc
mixin _$SurahEntity {
  int get sequence => throw _privateConstructorUsedError;
  int get ayahCount => throw _privateConstructorUsedError;
  TypeEntity get type => throw _privateConstructorUsedError;
  NameEntity get name => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  @JsonKey(name: 'recitation')
  Map<String, String> get recitationInfo => throw _privateConstructorUsedError;
  String? get tafsir => throw _privateConstructorUsedError;
  @JsonKey(name: 'preBismillah')
  @PreBismillahConverter()
  PreBismillahEntity? get preBismillah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahEntityCopyWith<SurahEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahEntityCopyWith<$Res> {
  factory $SurahEntityCopyWith(
          SurahEntity value, $Res Function(SurahEntity) then) =
      _$SurahEntityCopyWithImpl<$Res, SurahEntity>;
  @useResult
  $Res call(
      {int sequence,
      int ayahCount,
      TypeEntity type,
      NameEntity name,
      String translation,
      @JsonKey(name: 'recitation') Map<String, String> recitationInfo,
      String? tafsir,
      @JsonKey(name: 'preBismillah')
      @PreBismillahConverter()
      PreBismillahEntity? preBismillah});

  $TypeEntityCopyWith<$Res> get type;
  $NameEntityCopyWith<$Res> get name;
  $PreBismillahEntityCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class _$SurahEntityCopyWithImpl<$Res, $Val extends SurahEntity>
    implements $SurahEntityCopyWith<$Res> {
  _$SurahEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sequence = null,
    Object? ayahCount = null,
    Object? type = null,
    Object? name = null,
    Object? translation = null,
    Object? recitationInfo = null,
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
  }) {
    return _then(_value.copyWith(
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameEntity,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      recitationInfo: null == recitationInfo
          ? _value.recitationInfo
          : recitationInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as String?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeEntityCopyWith<$Res> get type {
    return $TypeEntityCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameEntityCopyWith<$Res> get name {
    return $NameEntityCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreBismillahEntityCopyWith<$Res>? get preBismillah {
    if (_value.preBismillah == null) {
      return null;
    }

    return $PreBismillahEntityCopyWith<$Res>(_value.preBismillah!, (value) {
      return _then(_value.copyWith(preBismillah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahEntityImplCopyWith<$Res>
    implements $SurahEntityCopyWith<$Res> {
  factory _$$SurahEntityImplCopyWith(
          _$SurahEntityImpl value, $Res Function(_$SurahEntityImpl) then) =
      __$$SurahEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sequence,
      int ayahCount,
      TypeEntity type,
      NameEntity name,
      String translation,
      @JsonKey(name: 'recitation') Map<String, String> recitationInfo,
      String? tafsir,
      @JsonKey(name: 'preBismillah')
      @PreBismillahConverter()
      PreBismillahEntity? preBismillah});

  @override
  $TypeEntityCopyWith<$Res> get type;
  @override
  $NameEntityCopyWith<$Res> get name;
  @override
  $PreBismillahEntityCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class __$$SurahEntityImplCopyWithImpl<$Res>
    extends _$SurahEntityCopyWithImpl<$Res, _$SurahEntityImpl>
    implements _$$SurahEntityImplCopyWith<$Res> {
  __$$SurahEntityImplCopyWithImpl(
      _$SurahEntityImpl _value, $Res Function(_$SurahEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sequence = null,
    Object? ayahCount = null,
    Object? type = null,
    Object? name = null,
    Object? translation = null,
    Object? recitationInfo = null,
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
  }) {
    return _then(_$SurahEntityImpl(
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameEntity,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      recitationInfo: null == recitationInfo
          ? _value._recitationInfo
          : recitationInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as String?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahEntityImpl extends _SurahEntity {
  const _$SurahEntityImpl(
      {required this.sequence,
      required this.ayahCount,
      required this.type,
      required this.name,
      required this.translation,
      @JsonKey(name: 'recitation')
      required final Map<String, String> recitationInfo,
      this.tafsir,
      @JsonKey(name: 'preBismillah')
      @PreBismillahConverter()
      this.preBismillah})
      : _recitationInfo = recitationInfo,
        super._();

  factory _$SurahEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahEntityImplFromJson(json);

  @override
  final int sequence;
  @override
  final int ayahCount;
  @override
  final TypeEntity type;
  @override
  final NameEntity name;
  @override
  final String translation;
  final Map<String, String> _recitationInfo;
  @override
  @JsonKey(name: 'recitation')
  Map<String, String> get recitationInfo {
    if (_recitationInfo is EqualUnmodifiableMapView) return _recitationInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recitationInfo);
  }

  @override
  final String? tafsir;
  @override
  @JsonKey(name: 'preBismillah')
  @PreBismillahConverter()
  final PreBismillahEntity? preBismillah;

  @override
  String toString() {
    return 'SurahEntity(sequence: $sequence, ayahCount: $ayahCount, type: $type, name: $name, translation: $translation, recitationInfo: $recitationInfo, tafsir: $tafsir, preBismillah: $preBismillah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahEntityImpl &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.ayahCount, ayahCount) ||
                other.ayahCount == ayahCount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            const DeepCollectionEquality()
                .equals(other._recitationInfo, _recitationInfo) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir) &&
            (identical(other.preBismillah, preBismillah) ||
                other.preBismillah == preBismillah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sequence,
      ayahCount,
      type,
      name,
      translation,
      const DeepCollectionEquality().hash(_recitationInfo),
      tafsir,
      preBismillah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahEntityImplCopyWith<_$SurahEntityImpl> get copyWith =>
      __$$SurahEntityImplCopyWithImpl<_$SurahEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahEntityImplToJson(
      this,
    );
  }
}

abstract class _SurahEntity extends SurahEntity {
  const factory _SurahEntity(
      {required final int sequence,
      required final int ayahCount,
      required final TypeEntity type,
      required final NameEntity name,
      required final String translation,
      @JsonKey(name: 'recitation')
      required final Map<String, String> recitationInfo,
      final String? tafsir,
      @JsonKey(name: 'preBismillah')
      @PreBismillahConverter()
      final PreBismillahEntity? preBismillah}) = _$SurahEntityImpl;
  const _SurahEntity._() : super._();

  factory _SurahEntity.fromJson(Map<String, dynamic> json) =
      _$SurahEntityImpl.fromJson;

  @override
  int get sequence;
  @override
  int get ayahCount;
  @override
  TypeEntity get type;
  @override
  NameEntity get name;
  @override
  String get translation;
  @override
  @JsonKey(name: 'recitation')
  Map<String, String> get recitationInfo;
  @override
  String? get tafsir;
  @override
  @JsonKey(name: 'preBismillah')
  @PreBismillahConverter()
  PreBismillahEntity? get preBismillah;
  @override
  @JsonKey(ignore: true)
  _$$SurahEntityImplCopyWith<_$SurahEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
