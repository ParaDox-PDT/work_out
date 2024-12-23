// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrainingModelAdapter extends TypeAdapter<TrainingModel> {
  @override
  final int typeId = 2;

  @override
  TrainingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrainingModel(
      cycle: fields[0] as int?,
      name: fields[1] as String?,
      exercises: (fields[2] as List?)?.cast<ExerciseModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, TrainingModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.cycle)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.exercises);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
