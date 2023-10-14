// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookEntite.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntiteAdapter extends TypeAdapter<BookEntite> {
  @override
  final int typeId = 0;

  @override
  BookEntite read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntite(
      bookid: fields[1] as String,
      price: fields[4] as num?,
      rating: fields[5] as num?,
      image: fields[0] as String?,
      authorName: fields[2] as String?,
      title: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntite obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.bookid)
      ..writeByte(2)
      ..write(obj.authorName)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntiteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
