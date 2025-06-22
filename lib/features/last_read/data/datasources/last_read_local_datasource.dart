import 'package:hive/hive.dart';
import '../../../../core/error/exceptions.dart';
import '../models/last_read_model.dart';
import '../../domain/entities/last_read_entity.dart';

class LastReadLocalDataSource {
  static const String boxName = 'last_read_box';
  static const String key = 'last_read';

  Future<Box<LastReadModel>> _openBox() async {
    try {
      return await Hive.openBox<LastReadModel>(boxName);
    } catch (_) {
      throw const CacheException(message: 'Failed to open Hive box');
    }
  }

  Future<LastReadEntity?> load() async {
    final box = await _openBox();
    final model = box.get(key);

    if (model != null) {
      return model.toEntity();
    }

    // berikan default value saat awal hive kosong
    return const LastReadEntity(
      ayahCount: 7,
      sequence: 1,
      surahName: 'Al-Fatihah',
    );
  }

  Future<void> save(LastReadEntity lastRead) async {
    final box = await _openBox();

    // simpan ke hive
    await box.put(
      key,
      LastReadModel.fromEntity(lastRead),
    );
  }
}
