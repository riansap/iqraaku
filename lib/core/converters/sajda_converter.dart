import 'package:json_annotation/json_annotation.dart';

class SajdaConverter implements JsonConverter<bool, dynamic> {
  const SajdaConverter();

  @override
  bool fromJson(dynamic json) {
    if (json is bool) {
      return json;
    } else if (json is Map<String, dynamic>) {
      return (json['recommended'] == true) || (json['obligatory'] == true);
    } else {
      return false;
    }
  }

  @override
  dynamic toJson(bool object) => object;
}
