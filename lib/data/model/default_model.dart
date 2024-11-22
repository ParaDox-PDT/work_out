import 'dart:convert';
import 'package:hive/hive.dart';

part 'default_model.g.dart';

DefaultModel defaultModelFromJson(String str) =>
    DefaultModel.fromJson(json.decode(str));

String defaultModelToJson(DefaultModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class DefaultModel {
  DefaultModel({
    this.id,
    this.name,
  });

  DefaultModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  @HiveField(0)
  num? id;
  @HiveField(1)
  String? name;

  DefaultModel copyWith({
    num? id,
    String? name,
  }) =>
      DefaultModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
