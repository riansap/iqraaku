import 'package:json_annotation/json_annotation.dart';
import '../domain/entities/pre_bismillah_entity.dart';

class PreBismillahConverter
    implements JsonConverter<PreBismillahEntity?, dynamic> {
  const PreBismillahConverter();

  @override
  PreBismillahEntity? fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return PreBismillahEntity.fromJson(json);
    }
    return null;
  }

  @override
  dynamic toJson(PreBismillahEntity? object) => object?.toJson();
}
