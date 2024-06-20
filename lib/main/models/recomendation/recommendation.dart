import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'recommendation.freezed.dart';
part 'recommendation.g.dart';

@freezed
@HiveType(typeId: 1)
class Recommendation with _$Recommendation {
    const factory Recommendation({
        @JsonKey(name: "title")
        @HiveField(0)
        String? title,
        @JsonKey(name: "price")
        @HiveField(1)
        int? price,
        @JsonKey(name: "desc")
        @HiveField(2)
        String? desc,
        @JsonKey(name: "rating")
        @HiveField(3)
        double? rating,
        @JsonKey(name: "pic_urls")
        @HiveField(4)
        List<String>? picUrls,
        @HiveField(5)
        @JsonKey(name: "id")
        int? id
    }) = _Recommendation;

    factory Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);
}
