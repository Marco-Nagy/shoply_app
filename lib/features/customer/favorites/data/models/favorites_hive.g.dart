// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritesHiveAdapter extends TypeAdapter<FavoritesHive> {
  @override
  final typeId = 1;

  @override
  FavoritesHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritesHive(
      productId: fields[0] as String,
      productName: fields[1] as String,
      categoryName: fields[2] as String,
      image: fields[3] as String,
      price: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritesHive obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productName)
      ..writeByte(2)
      ..write(obj.categoryName)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
