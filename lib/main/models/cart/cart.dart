import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
@HiveType(typeId: 2)
class Cart with _$Cart {
    const factory Cart({
        @JsonKey(name: "title")
        @HiveField(0)
        String? title,
        @JsonKey(name: "price")
        @HiveField(1)
        int? price,
        @JsonKey(name: "rating")
        @HiveField(2)
        double? rating,
        @JsonKey(name: "pic_urls")
        @HiveField(3)
        List<String>? picUrls,
        @JsonKey(name: "count")
        @HiveField(4)
        int? count
    }) = _Cart;

    factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
