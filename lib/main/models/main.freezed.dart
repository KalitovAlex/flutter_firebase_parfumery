// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  @JsonKey(name: "Banner")
  List<Banner> get banner => throw _privateConstructorUsedError;
  @JsonKey(name: "Category")
  List<Category> get category => throw _privateConstructorUsedError;
  @JsonKey(name: "Items")
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call(
      {@JsonKey(name: "Banner") List<Banner> banner,
      @JsonKey(name: "Category") List<Category> category,
      @JsonKey(name: "Items") List<Item> items});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? category = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<Banner>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
          _$MainImpl value, $Res Function(_$MainImpl) then) =
      __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Banner") List<Banner> banner,
      @JsonKey(name: "Category") List<Category> category,
      @JsonKey(name: "Items") List<Item> items});
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? category = null,
    Object? items = null,
  }) {
    return _then(_$MainImpl(
      banner: null == banner
          ? _value._banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<Banner>,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainImpl implements _Main {
  const _$MainImpl(
      {@JsonKey(name: "Banner") required final List<Banner> banner,
      @JsonKey(name: "Category") required final List<Category> category,
      @JsonKey(name: "Items") required final List<Item> items})
      : _banner = banner,
        _category = category,
        _items = items;

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  final List<Banner> _banner;
  @override
  @JsonKey(name: "Banner")
  List<Banner> get banner {
    if (_banner is EqualUnmodifiableListView) return _banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banner);
  }

  final List<Category> _category;
  @override
  @JsonKey(name: "Category")
  List<Category> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<Item> _items;
  @override
  @JsonKey(name: "Items")
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Main(banner: $banner, category: $category, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            const DeepCollectionEquality().equals(other._banner, _banner) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banner),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
      {@JsonKey(name: "Banner") required final List<Banner> banner,
      @JsonKey(name: "Category") required final List<Category> category,
      @JsonKey(name: "Items") required final List<Item> items}) = _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  @JsonKey(name: "Banner")
  List<Banner> get banner;
  @override
  @JsonKey(name: "Category")
  List<Category> get category;
  @override
  @JsonKey(name: "Items")
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res, Banner>;
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res, $Val extends Banner>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerImplCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$BannerImplCopyWith(
          _$BannerImpl value, $Res Function(_$BannerImpl) then) =
      __$$BannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class __$$BannerImplCopyWithImpl<$Res>
    extends _$BannerCopyWithImpl<$Res, _$BannerImpl>
    implements _$$BannerImplCopyWith<$Res> {
  __$$BannerImplCopyWithImpl(
      _$BannerImpl _value, $Res Function(_$BannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$BannerImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerImpl implements _Banner {
  const _$BannerImpl({@JsonKey(name: "url") required this.url});

  factory _$BannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'Banner(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      __$$BannerImplCopyWithImpl<_$BannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerImplToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  const factory _Banner({@JsonKey(name: "url") required final String url}) =
      _$BannerImpl;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$BannerImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$BannerImplCopyWith<_$BannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "picUrl")
  String get picUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "picUrl") String picUrl,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picUrl = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picUrl: null == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "picUrl") String picUrl,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picUrl = null,
    Object? title = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picUrl: null == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "picUrl") required this.picUrl,
      @JsonKey(name: "title") required this.title});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "picUrl")
  final String picUrl;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'Category(id: $id, picUrl: $picUrl, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, picUrl, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "picUrl") required final String picUrl,
      @JsonKey(name: "title") required final String title}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "picUrl")
  String get picUrl;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "picUrl")
  List<String> get picUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "picUrl") List<String> picUrl,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? picUrl = null,
    Object? price = null,
    Object? rating = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: null == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "picUrl") List<String> picUrl,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? picUrl = null,
    Object? price = null,
    Object? rating = null,
    Object? title = null,
  }) {
    return _then(_$ItemImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: null == picUrl
          ? _value._picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "description") required this.description,
      @JsonKey(name: "picUrl") required final List<String> picUrl,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "title") required this.title})
      : _picUrl = picUrl;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "description")
  final String description;
  final List<String> _picUrl;
  @override
  @JsonKey(name: "picUrl")
  List<String> get picUrl {
    if (_picUrl is EqualUnmodifiableListView) return _picUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picUrl);
  }

  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "rating")
  final double rating;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'Item(description: $description, picUrl: $picUrl, price: $price, rating: $rating, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._picUrl, _picUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_picUrl), price, rating, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@JsonKey(name: "description") required final String description,
      @JsonKey(name: "picUrl") required final List<String> picUrl,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "rating") required final double rating,
      @JsonKey(name: "title") required final String title}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "picUrl")
  List<String> get picUrl;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "rating")
  double get rating;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
