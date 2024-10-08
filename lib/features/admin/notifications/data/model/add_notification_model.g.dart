// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_notification_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddNotificationModelAdapter extends TypeAdapter<AddNotificationModel> {
  @override
  final int typeId = 0;

  @override
  AddNotificationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddNotificationModel(
      title: fields[0] as String,
      body: fields[1] as String,
      createAt: fields[3] as DateTime,
      productId: fields[2] as String,
      productName: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AddNotificationModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.body)
      ..writeByte(2)
      ..write(obj.productId)
      ..writeByte(4)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.createAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddNotificationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
