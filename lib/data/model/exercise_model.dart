import 'dart:convert';
import 'package:hive/hive.dart';

part 'exercise_model.g.dart';

ExerciseModel exerciseModelFromJson(String str) =>
    ExerciseModel.fromJson(json.decode(str));

String exerciseModelToJson(ExerciseModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class ExerciseModel {
  ExerciseModel({
    this.minute,
    this.name,
    this.icon,
  });

  ExerciseModel.fromJson(dynamic json) {
    minute = json['minute'];
    name = json['name'];
    icon = json['icon'];
  }

  @HiveField(0)
  int? minute;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? icon;

  ExerciseModel copyWith({
    int? minute,
    String? name,
    String? icon,
  }) =>
      ExerciseModel(
        minute: minute ?? this.minute,
        name: name ?? this.name,
        icon: icon ?? this.icon,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['minute'] = minute;
    map['name'] = name;
    map['icon'] = icon;
    return map;
  }
}
