import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class Main with _$Main {
    const factory Main({
        @JsonKey(name: "Banner")
        required List<Banner> banner,
        @JsonKey(name: "Category")
        required List<Category> category,
        @JsonKey(name: "Items")
        required List<Item> items,
    }) = _Main;

    factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Banner with _$Banner {
    const factory Banner({
        @JsonKey(name: "url")
        required String url,
    }) = _Banner;

    factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Category with _$Category {
    const factory Category({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "picUrl")
        required String picUrl,
        @JsonKey(name: "title")
        required String title,
    }) = _Category;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Item with _$Item {
    const factory Item({
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "picUrl")
        required List<String> picUrl,
        @JsonKey(name: "price")
        required int price,
        @JsonKey(name: "rating")
        required double rating,
        @JsonKey(name: "title")
        required String title,
    }) = _Item;

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
