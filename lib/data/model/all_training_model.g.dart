// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_training_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AllTrainingModelAdapter extends TypeAdapter<AllTrainingModel> {
  @override
  final int typeId = 3;

  @override
  AllTrainingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AllTrainingModel(
      allTrainings: (fields[0] as List?)?.cast<TrainingModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, AllTrainingModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.allTrainings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllTrainingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
