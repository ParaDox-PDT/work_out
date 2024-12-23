import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:work_out/data/model/training_model.dart';

part 'all_training_model.g.dart';

AllTrainingModel allTrainingModelFromJson(String str) =>
    AllTrainingModel.fromJson(json.decode(str));

String allTrainingModelToJson(AllTrainingModel data) =>
    json.encode(data.toJson());

@HiveType(typeId: 3)
class AllTrainingModel {
  AllTrainingModel({
    this.allTrainings,
  });

  AllTrainingModel.fromJson(dynamic json) {
    allTrainings = json['all_trainings'];
  }

  @HiveField(0)
  List<TrainingModel>? allTrainings;

  AllTrainingModel copyWith({
    List<TrainingModel>? allTrainings,
  }) =>
      AllTrainingModel(
        allTrainings: allTrainings ?? this.allTrainings,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all_trainings'] = allTrainings;
    return map;
  }
}
