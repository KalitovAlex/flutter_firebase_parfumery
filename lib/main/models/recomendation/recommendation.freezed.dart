// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return _Recommendation.fromJson(json);
}

/// @nodoc
mixin _$Recommendation {
  @JsonKey(name: "title")
  @HiveField(0)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  @HiveField(2)
  String? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  @HiveField(3)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "pic_urls")
  @HiveField(4)
  List<String>? get picUrls => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res, Recommendation>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "desc") @HiveField(2) String? desc,
      @JsonKey(name: "rating") @HiveField(3) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(4) List<String>? picUrls,
      @HiveField(5) @JsonKey(name: "id") int? id,
      @HiveField(6) @JsonKey(name: "category") String? category});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res, $Val extends Recommendation>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? desc = freezed,
    Object? rating = freezed,
    Object? picUrls = freezed,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      picUrls: freezed == picUrls
          ? _value.picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationImplCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$$RecommendationImplCopyWith(_$RecommendationImpl value,
          $Res Function(_$RecommendationImpl) then) =
      __$$RecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "desc") @HiveField(2) String? desc,
      @JsonKey(name: "rating") @HiveField(3) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(4) List<String>? picUrls,
      @HiveField(5) @JsonKey(name: "id") int? id,
      @HiveField(6) @JsonKey(name: "category") String? category});
}

/// @nodoc
class __$$RecommendationImplCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res, _$RecommendationImpl>
    implements _$$RecommendationImplCopyWith<$Res> {
  __$$RecommendationImplCopyWithImpl(
      _$RecommendationImpl _value, $Res Function(_$RecommendationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? desc = freezed,
    Object? rating = freezed,
    Object? picUrls = freezed,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_$RecommendationImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      picUrls: freezed == picUrls
          ? _value._picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationImpl implements _Recommendation {
  const _$RecommendationImpl(
      {@JsonKey(name: "title") @HiveField(0) this.title,
      @JsonKey(name: "price") @HiveField(1) this.price,
      @JsonKey(name: "desc") @HiveField(2) this.desc,
      @JsonKey(name: "rating") @HiveField(3) this.rating,
      @JsonKey(name: "pic_urls") @HiveField(4) final List<String>? picUrls,
      @HiveField(5) @JsonKey(name: "id") this.id,
      @HiveField(6) @JsonKey(name: "category") this.category})
      : _picUrls = picUrls;

  factory _$RecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationImplFromJson(json);

  @override
  @JsonKey(name: "title")
  @HiveField(0)
  final String? title;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  final int? price;
  @override
  @JsonKey(name: "desc")
  @HiveField(2)
  final String? desc;
  @override
  @JsonKey(name: "rating")
  @HiveField(3)
  final double? rating;
  final List<String>? _picUrls;
  @override
  @JsonKey(name: "pic_urls")
  @HiveField(4)
  List<String>? get picUrls {
    final value = _picUrls;
    if (value == null) return null;
    if (_picUrls is EqualUnmodifiableListView) return _picUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  @JsonKey(name: "id")
  final int? id;
  @override
  @HiveField(6)
  @JsonKey(name: "category")
  final String? category;

  @override
  String toString() {
    return 'Recommendation(title: $title, price: $price, desc: $desc, rating: $rating, picUrls: $picUrls, id: $id, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._picUrls, _picUrls) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, price, desc, rating,
      const DeepCollectionEquality().hash(_picUrls), id, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      __$$RecommendationImplCopyWithImpl<_$RecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationImplToJson(
      this,
    );
  }
}

abstract class _Recommendation implements Recommendation {
  const factory _Recommendation(
          {@JsonKey(name: "title") @HiveField(0) final String? title,
          @JsonKey(name: "price") @HiveField(1) final int? price,
          @JsonKey(name: "desc") @HiveField(2) final String? desc,
          @JsonKey(name: "rating") @HiveField(3) final double? rating,
          @JsonKey(name: "pic_urls") @HiveField(4) final List<String>? picUrls,
          @HiveField(5) @JsonKey(name: "id") final int? id,
          @HiveField(6) @JsonKey(name: "category") final String? category}) =
      _$RecommendationImpl;

  factory _Recommendation.fromJson(Map<String, dynamic> json) =
      _$RecommendationImpl.fromJson;

  @override
  @JsonKey(name: "title")
  @HiveField(0)
  String? get title;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price;
  @override
  @JsonKey(name: "desc")
  @HiveField(2)
  String? get desc;
  @override
  @JsonKey(name: "rating")
  @HiveField(3)
  double? get rating;
  @override
  @JsonKey(name: "pic_urls")
  @HiveField(4)
  List<String>? get picUrls;
  @override
  @HiveField(5)
  @JsonKey(name: "id")
  int? get id;
  @override
  @HiveField(6)
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
