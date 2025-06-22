// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sequence_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SequenceEntity _$SequenceEntityFromJson(Map<String, dynamic> json) {
  return _SequenceEntity.fromJson(json);
}

/// @nodoc
mixin _$SequenceEntity {
  int get quran => throw _privateConstructorUsedError;
  int get surah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SequenceEntityCopyWith<SequenceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SequenceEntityCopyWith<$Res> {
  factory $SequenceEntityCopyWith(
          SequenceEntity value, $Res Function(SequenceEntity) then) =
      _$SequenceEntityCopyWithImpl<$Res, SequenceEntity>;
  @useResult
  $Res call({int quran, int surah});
}

/// @nodoc
class _$SequenceEntityCopyWithImpl<$Res, $Val extends SequenceEntity>
    implements $SequenceEntityCopyWith<$Res> {
  _$SequenceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quran = null,
    Object? surah = null,
  }) {
    return _then(_value.copyWith(
      quran: null == quran
          ? _value.quran
          : quran // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SequenceEntityImplCopyWith<$Res>
    implements $SequenceEntityCopyWith<$Res> {
  factory _$$SequenceEntityImplCopyWith(_$SequenceEntityImpl value,
          $Res Function(_$SequenceEntityImpl) then) =
      __$$SequenceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quran, int surah});
}

/// @nodoc
class __$$SequenceEntityImplCopyWithImpl<$Res>
    extends _$SequenceEntityCopyWithImpl<$Res, _$SequenceEntityImpl>
    implements _$$SequenceEntityImplCopyWith<$Res> {
  __$$SequenceEntityImplCopyWithImpl(
      _$SequenceEntityImpl _value, $Res Function(_$SequenceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quran = null,
    Object? surah = null,
  }) {
    return _then(_$SequenceEntityImpl(
      quran: null == quran
          ? _value.quran
          : quran // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SequenceEntityImpl implements _SequenceEntity {
  const _$SequenceEntityImpl({required this.quran, required this.surah});

  factory _$SequenceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SequenceEntityImplFromJson(json);

  @override
  final int quran;
  @override
  final int surah;

  @override
  String toString() {
    return 'SequenceEntity(quran: $quran, surah: $surah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SequenceEntityImpl &&
            (identical(other.quran, quran) || other.quran == quran) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quran, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SequenceEntityImplCopyWith<_$SequenceEntityImpl> get copyWith =>
      __$$SequenceEntityImplCopyWithImpl<_$SequenceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SequenceEntityImplToJson(
      this,
    );
  }
}

abstract class _SequenceEntity implements SequenceEntity {
  const factory _SequenceEntity(
      {required final int quran,
      required final int surah}) = _$SequenceEntityImpl;

  factory _SequenceEntity.fromJson(Map<String, dynamic> json) =
      _$SequenceEntityImpl.fromJson;

  @override
  int get quran;
  @override
  int get surah;
  @override
  @JsonKey(ignore: true)
  _$$SequenceEntityImplCopyWith<_$SequenceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
