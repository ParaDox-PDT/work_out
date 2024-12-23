import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:work_out/data/model/exercise_model.dart';

part 'training_model.g.dart';

TrainingModel trainingModelFromJson(String str) =>
    TrainingModel.fromJson(json.decode(str));

String trainingModelToJson(TrainingModel data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class TrainingModel {
  TrainingModel({
    this.cycle,
    this.name,
    this.exercises,
  });

  TrainingModel.fromJson(dynamic json) {
    cycle = json['cycle'];
    name = json['name'];
    exercises = json['exercises'];
  }

  @HiveField(0)
  int? cycle;
  @HiveField(1)
  String? name;
  @HiveField(2)
  List<ExerciseModel>? exercises;

  TrainingModel copyWith({
    int? cycle,
    String? name,
    List<ExerciseModel>? exercises,
  }) =>
      TrainingModel(
        cycle: cycle ?? this.cycle,
        name: name ?? this.name,
        exercises: exercises ?? this.exercises,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cycle'] = cycle;
    map['name'] = name;
    map['exercises'] = exercises;
    return map;
  }
}
