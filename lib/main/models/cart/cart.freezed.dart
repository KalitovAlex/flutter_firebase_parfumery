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

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  @JsonKey(name: "title")
  @HiveField(0)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  @HiveField(2)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "pic_urls")
  @HiveField(3)
  List<String>? get picUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  @HiveField(4)
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "rating") @HiveField(2) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(3) List<String>? picUrls,
      @JsonKey(name: "count") @HiveField(4) int? count});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

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
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") @HiveField(0) String? title,
      @JsonKey(name: "price") @HiveField(1) int? price,
      @JsonKey(name: "rating") @HiveField(2) double? rating,
      @JsonKey(name: "pic_urls") @HiveField(3) List<String>? picUrls,
      @JsonKey(name: "count") @HiveField(4) int? count});
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
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
    return _then(_$CartImpl(
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
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {@JsonKey(name: "title") @HiveField(0) this.title,
      @JsonKey(name: "price") @HiveField(1) this.price,
      @JsonKey(name: "rating") @HiveField(2) this.rating,
      @JsonKey(name: "pic_urls") @HiveField(3) final List<String>? picUrls,
      @JsonKey(name: "count") @HiveField(4) this.count})
      : _picUrls = picUrls;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

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
  @HiveField(2)
  final double? rating;
  final List<String>? _picUrls;
  @override
  @JsonKey(name: "pic_urls")
  @HiveField(3)
  List<String>? get picUrls {
    final value = _picUrls;
    if (value == null) return null;
    if (_picUrls is EqualUnmodifiableListView) return _picUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "count")
  @HiveField(4)
  final int? count;

  @override
  String toString() {
    return 'Cart(title: $title, price: $price, rating: $rating, picUrls: $picUrls, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
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
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {@JsonKey(name: "title") @HiveField(0) final String? title,
      @JsonKey(name: "price") @HiveField(1) final int? price,
      @JsonKey(name: "rating") @HiveField(2) final double? rating,
      @JsonKey(name: "pic_urls") @HiveField(3) final List<String>? picUrls,
      @JsonKey(name: "count") @HiveField(4) final int? count}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

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
  @HiveField(2)
  double? get rating;
  @override
  @JsonKey(name: "pic_urls")
  @HiveField(3)
  List<String>? get picUrls;
  @override
  @JsonKey(name: "count")
  @HiveField(4)
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
