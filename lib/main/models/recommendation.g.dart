// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

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
