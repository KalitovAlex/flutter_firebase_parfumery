// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
      banner: (json['Banner'] as List<dynamic>)
          .map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['Category'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['Items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'Banner': instance.banner,
      'Category': instance.category,
      'Items': instance.items,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      picUrl: json['picUrl'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picUrl': instance.picUrl,
      'title': instance.title,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      description: json['description'] as String,
      picUrl:
          (json['picUrl'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'picUrl': instance.picUrl,
      'price': instance.price,
      'rating': instance.rating,
      'title': instance.title,
    };
