// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      description: json['description'] as String?,
      picUrl:
          (json['picUrl'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'picUrl': instance.picUrl,
      'price': instance.price,
      'rating': instance.rating,
      'title': instance.title,
    };
