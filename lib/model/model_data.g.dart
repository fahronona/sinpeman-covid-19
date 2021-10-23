// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelDataAdapter extends TypeAdapter<ModelData> {
  @override
  final int typeId = 1;

  @override
  ModelData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelData(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      (fields[5] as List).cast<String>(),
      fields[6] as String,
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ModelData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.nama)
      ..writeByte(1)
      ..write(obj.umur)
      ..writeByte(2)
      ..write(obj.tanggal)
      ..writeByte(3)
      ..write(obj.input1)
      ..writeByte(4)
      ..write(obj.input2)
      ..writeByte(5)
      ..write(obj.input3)
      ..writeByte(6)
      ..write(obj.input4)
      ..writeByte(7)
      ..write(obj.hasil);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
