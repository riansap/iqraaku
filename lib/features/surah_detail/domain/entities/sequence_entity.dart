import 'package:freezed_annotation/freezed_annotation.dart';

part 'sequence_entity.freezed.dart';
part 'sequence_entity.g.dart';

@freezed
class SequenceEntity with _$SequenceEntity {
  const factory SequenceEntity({
    required int quran,
    required int surah,
  }) = _SequenceEntity;

  factory SequenceEntity.fromJson(Map<String, dynamic> json) =>
      _$SequenceEntityFromJson(json);
}
