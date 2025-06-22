// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahDetailEntity _$SurahDetailEntityFromJson(Map<String, dynamic> json) {
  return _SurahDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$SurahDetailEntity {
  int get sequence => throw _privateConstructorUsedError;
  int get ayahCount => throw _privateConstructorUsedError;
  TypeEntity get type => throw _privateConstructorUsedError;
  NameEntity get name => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String? get tafsir => throw _privateConstructorUsedError;
  @PreBismillahConverter()
  PreBismillahEntity? get preBismillah => throw _privateConstructorUsedError;
  Map<String, String> get recitation => throw _privateConstructorUsedError;
  List<AyahEntity> get ayah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahDetailEntityCopyWith<SurahDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDetailEntityCopyWith<$Res> {
  factory $SurahDetailEntityCopyWith(
          SurahDetailEntity value, $Res Function(SurahDetailEntity) then) =
      _$SurahDetailEntityCopyWithImpl<$Res, SurahDetailEntity>;
  @useResult
  $Res call(
      {int sequence,
      int ayahCount,
      TypeEntity type,
      NameEntity name,
      String translation,
      String? tafsir,
      @PreBismillahConverter() PreBismillahEntity? preBismillah,
      Map<String, String> recitation,
      List<AyahEntity> ayah});

  $TypeEntityCopyWith<$Res> get type;
  $NameEntityCopyWith<$Res> get name;
  $PreBismillahEntityCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class _$SurahDetailEntityCopyWithImpl<$Res, $Val extends SurahDetailEntity>
    implements $SurahDetailEntityCopyWith<$Res> {
  _$SurahDetailEntityCopyWithImpl(this._value, this._then);

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
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
    Object? recitation = null,
    Object? ayah = null,
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
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as String?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahEntity?,
      recitation: null == recitation
          ? _value.recitation
          : recitation // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as List<AyahEntity>,
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
abstract class _$$SurahDetailEntityImplCopyWith<$Res>
    implements $SurahDetailEntityCopyWith<$Res> {
  factory _$$SurahDetailEntityImplCopyWith(_$SurahDetailEntityImpl value,
          $Res Function(_$SurahDetailEntityImpl) then) =
      __$$SurahDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sequence,
      int ayahCount,
      TypeEntity type,
      NameEntity name,
      String translation,
      String? tafsir,
      @PreBismillahConverter() PreBismillahEntity? preBismillah,
      Map<String, String> recitation,
      List<AyahEntity> ayah});

  @override
  $TypeEntityCopyWith<$Res> get type;
  @override
  $NameEntityCopyWith<$Res> get name;
  @override
  $PreBismillahEntityCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class __$$SurahDetailEntityImplCopyWithImpl<$Res>
    extends _$SurahDetailEntityCopyWithImpl<$Res, _$SurahDetailEntityImpl>
    implements _$$SurahDetailEntityImplCopyWith<$Res> {
  __$$SurahDetailEntityImplCopyWithImpl(_$SurahDetailEntityImpl _value,
      $Res Function(_$SurahDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sequence = null,
    Object? ayahCount = null,
    Object? type = null,
    Object? name = null,
    Object? translation = null,
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
    Object? recitation = null,
    Object? ayah = null,
  }) {
    return _then(_$SurahDetailEntityImpl(
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
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as String?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahEntity?,
      recitation: null == recitation
          ? _value._recitation
          : recitation // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayah: null == ayah
          ? _value._ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as List<AyahEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahDetailEntityImpl implements _SurahDetailEntity {
  const _$SurahDetailEntityImpl(
      {required this.sequence,
      required this.ayahCount,
      required this.type,
      required this.name,
      required this.translation,
      this.tafsir,
      @PreBismillahConverter() this.preBismillah,
      required final Map<String, String> recitation,
      required final List<AyahEntity> ayah})
      : _recitation = recitation,
        _ayah = ayah;

  factory _$SurahDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDetailEntityImplFromJson(json);

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
  @override
  final String? tafsir;
  @override
  @PreBismillahConverter()
  final PreBismillahEntity? preBismillah;
  final Map<String, String> _recitation;
  @override
  Map<String, String> get recitation {
    if (_recitation is EqualUnmodifiableMapView) return _recitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recitation);
  }

  final List<AyahEntity> _ayah;
  @override
  List<AyahEntity> get ayah {
    if (_ayah is EqualUnmodifiableListView) return _ayah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayah);
  }

  @override
  String toString() {
    return 'SurahDetailEntity(sequence: $sequence, ayahCount: $ayahCount, type: $type, name: $name, translation: $translation, tafsir: $tafsir, preBismillah: $preBismillah, recitation: $recitation, ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDetailEntityImpl &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.ayahCount, ayahCount) ||
                other.ayahCount == ayahCount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir) &&
            (identical(other.preBismillah, preBismillah) ||
                other.preBismillah == preBismillah) &&
            const DeepCollectionEquality()
                .equals(other._recitation, _recitation) &&
            const DeepCollectionEquality().equals(other._ayah, _ayah));
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
      tafsir,
      preBismillah,
      const DeepCollectionEquality().hash(_recitation),
      const DeepCollectionEquality().hash(_ayah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDetailEntityImplCopyWith<_$SurahDetailEntityImpl> get copyWith =>
      __$$SurahDetailEntityImplCopyWithImpl<_$SurahDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _SurahDetailEntity implements SurahDetailEntity {
  const factory _SurahDetailEntity(
      {required final int sequence,
      required final int ayahCount,
      required final TypeEntity type,
      required final NameEntity name,
      required final String translation,
      final String? tafsir,
      @PreBismillahConverter() final PreBismillahEntity? preBismillah,
      required final Map<String, String> recitation,
      required final List<AyahEntity> ayah}) = _$SurahDetailEntityImpl;

  factory _SurahDetailEntity.fromJson(Map<String, dynamic> json) =
      _$SurahDetailEntityImpl.fromJson;

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
  String? get tafsir;
  @override
  @PreBismillahConverter()
  PreBismillahEntity? get preBismillah;
  @override
  Map<String, String> get recitation;
  @override
  List<AyahEntity> get ayah;
  @override
  @JsonKey(ignore: true)
  _$$SurahDetailEntityImplCopyWith<_$SurahDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
