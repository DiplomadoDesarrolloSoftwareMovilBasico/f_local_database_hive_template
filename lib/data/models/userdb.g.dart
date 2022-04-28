// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdb.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDBAdapter extends TypeAdapter<UserDB> {
  @override
  final int typeId = 0;

  @override
  UserDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDB(
      gender: fields[0] as String,
      name: fields[1] as String,
      country: fields[2] as String,
      email: fields[3] as String,
      picture: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserDB obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.picture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
