// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsImpl _$$NotificationsImplFromJson(Map<String, dynamic> json) =>
    _$NotificationsImpl(
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      picUrls: json['pic_url'] as String?,
    );

Map<String, dynamic> _$$NotificationsImplToJson(_$NotificationsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'pic_url': instance.picUrls,
    };
