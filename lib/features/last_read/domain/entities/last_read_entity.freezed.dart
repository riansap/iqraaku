// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_read_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LastReadEntity {
  int get ayahCount => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  String get surahName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LastReadEntityCopyWith<LastReadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastReadEntityCopyWith<$Res> {
  factory $LastReadEntityCopyWith(
          LastReadEntity value, $Res Function(LastReadEntity) then) =
      _$LastReadEntityCopyWithImpl<$Res, LastReadEntity>;
  @useResult
  $Res call({int ayahCount, int sequence, String surahName});
}

/// @nodoc
class _$LastReadEntityCopyWithImpl<$Res, $Val extends LastReadEntity>
    implements $LastReadEntityCopyWith<$Res> {
  _$LastReadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahCount = null,
    Object? sequence = null,
    Object? surahName = null,
  }) {
    return _then(_value.copyWith(
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      surahName: null == surahName
          ? _value.surahName
          : surahName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastReadEntityImplCopyWith<$Res>
    implements $LastReadEntityCopyWith<$Res> {
  factory _$$LastReadEntityImplCopyWith(_$LastReadEntityImpl value,
          $Res Function(_$LastReadEntityImpl) then) =
      __$$LastReadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ayahCount, int sequence, String surahName});
}

/// @nodoc
class __$$LastReadEntityImplCopyWithImpl<$Res>
    extends _$LastReadEntityCopyWithImpl<$Res, _$LastReadEntityImpl>
    implements _$$LastReadEntityImplCopyWith<$Res> {
  __$$LastReadEntityImplCopyWithImpl(
      _$LastReadEntityImpl _value, $Res Function(_$LastReadEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahCount = null,
    Object? sequence = null,
    Object? surahName = null,
  }) {
    return _then(_$LastReadEntityImpl(
      ayahCount: null == ayahCount
          ? _value.ayahCount
          : ayahCount // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      surahName: null == surahName
          ? _value.surahName
          : surahName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastReadEntityImpl implements _LastReadEntity {
  const _$LastReadEntityImpl(
      {required this.ayahCount,
      required this.sequence,
      required this.surahName});

  @override
  final int ayahCount;
  @override
  final int sequence;
  @override
  final String surahName;

  @override
  String toString() {
    return 'LastReadEntity(ayahCount: $ayahCount, sequence: $sequence, surahName: $surahName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastReadEntityImpl &&
            (identical(other.ayahCount, ayahCount) ||
                other.ayahCount == ayahCount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.surahName, surahName) ||
                other.surahName == surahName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayahCount, sequence, surahName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastReadEntityImplCopyWith<_$LastReadEntityImpl> get copyWith =>
      __$$LastReadEntityImplCopyWithImpl<_$LastReadEntityImpl>(
          this, _$identity);
}

abstract class _LastReadEntity implements LastReadEntity {
  const factory _LastReadEntity(
      {required final int ayahCount,
      required final int sequence,
      required final String surahName}) = _$LastReadEntityImpl;

  @override
  int get ayahCount;
  @override
  int get sequence;
  @override
  String get surahName;
  @override
  @JsonKey(ignore: true)
  _$$LastReadEntityImplCopyWith<_$LastReadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
