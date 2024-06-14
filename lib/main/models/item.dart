import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

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
