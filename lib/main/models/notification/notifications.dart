import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
class Notifications with _$Notifications {
    const factory Notifications({
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "pic_url")
        String? picUrls,
    }) = _Notifications;

    factory Notifications.fromJson(Map<String, dynamic> json) => _$NotificationsFromJson(json);
}
