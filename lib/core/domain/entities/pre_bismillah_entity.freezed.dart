// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_bismillah_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreBismillahEntity _$PreBismillahEntityFromJson(Map<String, dynamic> json) {
  return _PreBismillahEntity.fromJson(json);
}

/// @nodoc
mixin _$PreBismillahEntity {
  String get text => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get transliteration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreBismillahEntityCopyWith<PreBismillahEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreBismillahEntityCopyWith<$Res> {
  factory $PreBismillahEntityCopyWith(
          PreBismillahEntity value, $Res Function(PreBismillahEntity) then) =
      _$PreBismillahEntityCopyWithImpl<$Res, PreBismillahEntity>;
  @useResult
  $Res call({String text, String translation, String transliteration});
}

/// @nodoc
class _$PreBismillahEntityCopyWithImpl<$Res, $Val extends PreBismillahEntity>
    implements $PreBismillahEntityCopyWith<$Res> {
  _$PreBismillahEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? translation = null,
    Object? transliteration = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreBismillahEntityImplCopyWith<$Res>
    implements $PreBismillahEntityCopyWith<$Res> {
  factory _$$PreBismillahEntityImplCopyWith(_$PreBismillahEntityImpl value,
          $Res Function(_$PreBismillahEntityImpl) then) =
      __$$PreBismillahEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String translation, String transliteration});
}

/// @nodoc
class __$$PreBismillahEntityImplCopyWithImpl<$Res>
    extends _$PreBismillahEntityCopyWithImpl<$Res, _$PreBismillahEntityImpl>
    implements _$$PreBismillahEntityImplCopyWith<$Res> {
  __$$PreBismillahEntityImplCopyWithImpl(_$PreBismillahEntityImpl _value,
      $Res Function(_$PreBismillahEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? translation = null,
    Object? transliteration = null,
  }) {
    return _then(_$PreBismillahEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreBismillahEntityImpl implements _PreBismillahEntity {
  const _$PreBismillahEntityImpl(
      {required this.text,
      required this.translation,
      required this.transliteration});

  factory _$PreBismillahEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreBismillahEntityImplFromJson(json);

  @override
  final String text;
  @override
  final String translation;
  @override
  final String transliteration;

  @override
  String toString() {
    return 'PreBismillahEntity(text: $text, translation: $translation, transliteration: $transliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreBismillahEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, translation, transliteration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreBismillahEntityImplCopyWith<_$PreBismillahEntityImpl> get copyWith =>
      __$$PreBismillahEntityImplCopyWithImpl<_$PreBismillahEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreBismillahEntityImplToJson(
      this,
    );
  }
}

abstract class _PreBismillahEntity implements PreBismillahEntity {
  const factory _PreBismillahEntity(
      {required final String text,
      required final String translation,
      required final String transliteration}) = _$PreBismillahEntityImpl;

  factory _PreBismillahEntity.fromJson(Map<String, dynamic> json) =
      _$PreBismillahEntityImpl.fromJson;

  @override
  String get text;
  @override
  String get translation;
  @override
  String get transliteration;
  @override
  @JsonKey(ignore: true)
  _$$PreBismillahEntityImplCopyWith<_$PreBismillahEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
