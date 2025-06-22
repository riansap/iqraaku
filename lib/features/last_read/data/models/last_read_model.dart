import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import '../../domain/entities/last_read_entity.dart';

part 'last_read_model.g.dart';

@HiveType(typeId: 4)
class LastReadModel extends Equatable {
  @HiveField(0)
  final int ayahCount;

  @HiveField(1)
  final int sequence;

  @HiveField(2)
  final String surahName;

  const LastReadModel({
    required this.ayahCount,
    required this.sequence,
    required this.surahName,
  });

  factory LastReadModel.fromEntity(LastReadEntity entity) {
    return LastReadModel(
      ayahCount: entity.ayahCount,
      sequence: entity.sequence,
      surahName: entity.surahName,
    );
  }

  LastReadEntity toEntity() {
    return LastReadEntity(
      ayahCount: ayahCount,
      sequence: sequence,
      surahName: surahName,
    );
  }

  @override
  List<Object?> get props => [ayahCount, sequence, surahName];
}
