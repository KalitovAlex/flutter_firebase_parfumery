import 'package:freezed_annotation/freezed_annotation.dart';
part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class Main with _$Main {
    const factory Main({
        @JsonKey(name: "Banner")
        List<Banner>? banner,
        @JsonKey(name: "Category")
        List<Category>? category,
        @JsonKey(name: "Items")
        List<Item>? items,
    }) = _Main;

    factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Banner with _$Banner {
    const factory Banner({
        @JsonKey(name: "url")
        String? url,
    }) = _Banner;

    factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Category with _$Category {
    const factory Category({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "picUrl")
        String? picUrl,
        @JsonKey(name: "title")
        String? title,
    }) = _Category;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Item with _$Item {
    const factory Item({
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "picUrl")
        List<String>? picUrl,
        @JsonKey(name: "price")
        int? price,
        @JsonKey(name: "rating")
        double? rating,
        @JsonKey(name: "title")
        String? title,
    }) = _Item;

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
