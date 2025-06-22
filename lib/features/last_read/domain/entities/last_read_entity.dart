import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_read_entity.freezed.dart';

@freezed
class LastReadEntity with _$LastReadEntity {
  const factory LastReadEntity({
    required int ayahCount,
    required int sequence,
    required String surahName,
  }) = _LastReadEntity;
}
