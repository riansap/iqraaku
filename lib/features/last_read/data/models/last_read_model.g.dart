// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_read_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LastReadModelAdapter extends TypeAdapter<LastReadModel> {
  @override
  final int typeId = 4;

  @override
  LastReadModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LastReadModel(
      ayahCount: fields[0] as int,
      sequence: fields[1] as int,
      surahName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LastReadModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ayahCount)
      ..writeByte(1)
      ..write(obj.sequence)
      ..writeByte(2)
      ..write(obj.surahName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LastReadModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
