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
      imageUrls: (json['pic_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RecommendationImplToJson(
    _$RecommendationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('desc', instance.desc);
  writeNotNull('rating', instance.rating);
  writeNotNull('pic_urls', instance.imageUrls);
  return val;
}
