// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardAdapter extends TypeAdapter<Card> {
  @override
  final int typeId = 1;

  @override
  Card read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Card(
      title: fields[0] as String?,
      price: fields[1] as int?,
      rating: fields[3] as double?,
      picUrls: (fields[4] as List?)?.cast<String>(),
      count: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Card obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.picUrls)
      ..writeByte(5)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      picUrls: (json['pic_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      count: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'rating': instance.rating,
      'pic_urls': instance.picUrls,
      'id': instance.count,
    };
