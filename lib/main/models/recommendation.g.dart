// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecommendationAdapter extends TypeAdapter<Recommendation> {
  @override
  final int typeId = 1;

  @override
  Recommendation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recommendation(
      title: fields[0] as String?,
      price: fields[1] as int?,
      desc: fields[2] as String?,
      rating: fields[3] as double?,
      picUrls: (fields[4] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Recommendation obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.desc)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.picUrls);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendationImpl _$$RecommendationImplFromJson(Map<String, dynamic> json) =>
    _$RecommendationImpl(
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toInt(),
      desc: json['desc'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      picUrls: (json['pic_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RecommendationImplToJson(
        _$RecommendationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'desc': instance.desc,
      'rating': instance.rating,
      'pic_urls': instance.picUrls,
    };
