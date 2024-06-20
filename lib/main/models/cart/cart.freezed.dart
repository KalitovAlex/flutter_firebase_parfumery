// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  @JsonKey(name: "title")
  @HiveField(0)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  @HiveField(3)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "pic_urls")
  @HiveField(4)
  List<String>? get picUrls => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "id")
  @HiveField(6)
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "rating") @HiveField(3) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(4) List<String>? picUrls,
      @HiveField(5)
      @JsonKey(name: "id")
      @HiveField(6)
      @JsonKey(name: "count")
      int? count});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? picUrls = freezed,
    Object? count = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      picUrls: freezed == picUrls
          ? _value.picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "rating") @HiveField(3) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(4) List<String>? picUrls,
      @HiveField(5)
      @JsonKey(name: "id")
      @HiveField(6)
      @JsonKey(name: "count")
      int? count});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? picUrls = freezed,
    Object? count = freezed,
  }) {
    return _then(_$CardImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      picUrls: freezed == picUrls
          ? _value._picUrls
          : picUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl implements _Card {
  const _$CardImpl(
      {@JsonKey(name: "title") @HiveField(0) this.title,
      @JsonKey(name: "price") @HiveField(1) this.price,
      @JsonKey(name: "rating") @HiveField(3) this.rating,
      @JsonKey(name: "pic_urls") @HiveField(4) final List<String>? picUrls,
      @HiveField(5)
      @JsonKey(name: "id")
      @HiveField(6)
      @JsonKey(name: "count")
      this.count})
      : _picUrls = picUrls;

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  @JsonKey(name: "title")
  @HiveField(0)
  final String? title;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  final int? price;
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
  @HiveField(6)
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'Card(title: $title, price: $price, rating: $rating, picUrls: $picUrls, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._picUrls, _picUrls) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, price, rating,
      const DeepCollectionEquality().hash(_picUrls), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {@JsonKey(name: "title") @HiveField(0) final String? title,
      @JsonKey(name: "price") @HiveField(1) final int? price,
      @JsonKey(name: "rating") @HiveField(3) final double? rating,
      @JsonKey(name: "pic_urls") @HiveField(4) final List<String>? picUrls,
      @HiveField(5)
      @JsonKey(name: "id")
      @HiveField(6)
      @JsonKey(name: "count")
      final int? count}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  @JsonKey(name: "title")
  @HiveField(0)
  String? get title;
  @override
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price;
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
  @HiveField(6)
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
