// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartAdapter extends TypeAdapter<Cart> {
  @override
  final int typeId = 2;

  @override
  Cart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cart(
      title: fields[0] as String?,
      price: fields[1] as int?,
      rating: fields[2] as double?,
      picUrls: (fields[3] as List?)?.cast<String>(),
      count: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Cart obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.rating)
      ..writeByte(3)
      ..write(obj.picUrls)
      ..writeByte(4)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      picUrls: (json['pic_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'rating': instance.rating,
      'pic_urls': instance.picUrls,
      'count': instance.count,
    };
