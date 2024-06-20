import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
@HiveType(typeId: 2)
class Card with _$Card {
    const factory Card({
        @JsonKey(name: "title")
        @HiveField(0)
        String? title,
        @JsonKey(name: "price")
        @HiveField(1)
        int? price,
        @JsonKey(name: "rating")
        @HiveField(3)
        double? rating,
        @JsonKey(name: "pic_urls")
        @HiveField(4)
        List<String>? picUrls,
        @HiveField(5)
        @JsonKey(name: "id")
        @HiveField(6)
        @JsonKey(name: "count")
        int? count
    }) = _Card;

    factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}