import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';
part 'recommendation.g.dart';

@freezed
class Recommendation with _$Recommendation {
    @JsonSerializable(includeIfNull: false)
    const factory Recommendation({
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "price")
        String? price,
        @JsonKey(name: "desc")
        String? desc,
        @JsonKey(name: "rating")
        double? rating,
        @JsonKey(name: "pic_url")
        List<String>? imageUrls
    }) = _Recommendation;

    factory Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);
}
