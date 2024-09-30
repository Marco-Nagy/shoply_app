// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchHomeCategoriesListEventImplCopyWith<$Res> {
  factory _$$FetchHomeCategoriesListEventImplCopyWith(
          _$FetchHomeCategoriesListEventImpl value,
          $Res Function(_$FetchHomeCategoriesListEventImpl) then) =
      __$$FetchHomeCategoriesListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHomeCategoriesListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchHomeCategoriesListEventImpl>
    implements _$$FetchHomeCategoriesListEventImplCopyWith<$Res> {
  __$$FetchHomeCategoriesListEventImplCopyWithImpl(
      _$FetchHomeCategoriesListEventImpl _value,
      $Res Function(_$FetchHomeCategoriesListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHomeCategoriesListEventImpl
    with DiagnosticableTreeMixin
    implements FetchHomeCategoriesListEvent {
  const _$FetchHomeCategoriesListEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchHomeCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeEvent.fetchHomeCategories'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeCategoriesListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) {
    return fetchHomeCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) {
    return fetchHomeCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (fetchHomeCategories != null) {
      return fetchHomeCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) {
    return fetchHomeCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) {
    return fetchHomeCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (fetchHomeCategories != null) {
      return fetchHomeCategories(this);
    }
    return orElse();
  }
}

abstract class FetchHomeCategoriesListEvent implements HomeEvent {
  const factory FetchHomeCategoriesListEvent() =
      _$FetchHomeCategoriesListEventImpl;
}

/// @nodoc
abstract class _$$GetHomeProductListEventImplCopyWith<$Res> {
  factory _$$GetHomeProductListEventImplCopyWith(
          _$GetHomeProductListEventImpl value,
          $Res Function(_$GetHomeProductListEventImpl) then) =
      __$$GetHomeProductListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeProductListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeProductListEventImpl>
    implements _$$GetHomeProductListEventImplCopyWith<$Res> {
  __$$GetHomeProductListEventImplCopyWithImpl(
      _$GetHomeProductListEventImpl _value,
      $Res Function(_$GetHomeProductListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeProductListEventImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListEvent {
  const _$GetHomeProductListEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getHomeProductList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.getHomeProductList'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) {
    return getHomeProductList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) {
    return getHomeProductList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductList != null) {
      return getHomeProductList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) {
    return getHomeProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) {
    return getHomeProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductList != null) {
      return getHomeProductList(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListEvent implements HomeEvent {
  const factory GetHomeProductListEvent() = _$GetHomeProductListEventImpl;
}

/// @nodoc
abstract class _$$GetHomeProductDetailsEventImplCopyWith<$Res> {
  factory _$$GetHomeProductDetailsEventImplCopyWith(
          _$GetHomeProductDetailsEventImpl value,
          $Res Function(_$GetHomeProductDetailsEventImpl) then) =
      __$$GetHomeProductDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$GetHomeProductDetailsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeProductDetailsEventImpl>
    implements _$$GetHomeProductDetailsEventImplCopyWith<$Res> {
  __$$GetHomeProductDetailsEventImplCopyWithImpl(
      _$GetHomeProductDetailsEventImpl _value,
      $Res Function(_$GetHomeProductDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GetHomeProductDetailsEventImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProductDetailsEventImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductDetailsEvent {
  const _$GetHomeProductDetailsEventImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getHomeProductDetails(productId: $productId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.getHomeProductDetails'))
      ..add(DiagnosticsProperty('productId', productId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductDetailsEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductDetailsEventImplCopyWith<_$GetHomeProductDetailsEventImpl>
      get copyWith => __$$GetHomeProductDetailsEventImplCopyWithImpl<
          _$GetHomeProductDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) {
    return getHomeProductDetails(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) {
    return getHomeProductDetails?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductDetails != null) {
      return getHomeProductDetails(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) {
    return getHomeProductDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) {
    return getHomeProductDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductDetails != null) {
      return getHomeProductDetails(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductDetailsEvent implements HomeEvent {
  const factory GetHomeProductDetailsEvent({required final String productId}) =
      _$GetHomeProductDetailsEventImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$GetHomeProductDetailsEventImplCopyWith<_$GetHomeProductDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductListPerCategoryEventImplCopyWith<$Res> {
  factory _$$GetHomeProductListPerCategoryEventImplCopyWith(
          _$GetHomeProductListPerCategoryEventImpl value,
          $Res Function(_$GetHomeProductListPerCategoryEventImpl) then) =
      __$$GetHomeProductListPerCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetHomeProductListPerCategoryEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res,
        _$GetHomeProductListPerCategoryEventImpl>
    implements _$$GetHomeProductListPerCategoryEventImplCopyWith<$Res> {
  __$$GetHomeProductListPerCategoryEventImplCopyWithImpl(
      _$GetHomeProductListPerCategoryEventImpl _value,
      $Res Function(_$GetHomeProductListPerCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetHomeProductListPerCategoryEventImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProductListPerCategoryEventImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListPerCategoryEvent {
  const _$GetHomeProductListPerCategoryEventImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.getHomeProductListPerCategory(categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeEvent.getHomeProductListPerCategory'))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListPerCategoryEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductListPerCategoryEventImplCopyWith<
          _$GetHomeProductListPerCategoryEventImpl>
      get copyWith => __$$GetHomeProductListPerCategoryEventImplCopyWithImpl<
          _$GetHomeProductListPerCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchHomeCategories,
    required TResult Function() getHomeProductList,
    required TResult Function(String productId) getHomeProductDetails,
    required TResult Function(String categoryId) getHomeProductListPerCategory,
  }) {
    return getHomeProductListPerCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchHomeCategories,
    TResult? Function()? getHomeProductList,
    TResult? Function(String productId)? getHomeProductDetails,
    TResult? Function(String categoryId)? getHomeProductListPerCategory,
  }) {
    return getHomeProductListPerCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchHomeCategories,
    TResult Function()? getHomeProductList,
    TResult Function(String productId)? getHomeProductDetails,
    TResult Function(String categoryId)? getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategory != null) {
      return getHomeProductListPerCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchHomeCategoriesListEvent value)
        fetchHomeCategories,
    required TResult Function(GetHomeProductListEvent value) getHomeProductList,
    required TResult Function(GetHomeProductDetailsEvent value)
        getHomeProductDetails,
    required TResult Function(GetHomeProductListPerCategoryEvent value)
        getHomeProductListPerCategory,
  }) {
    return getHomeProductListPerCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult? Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult? Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult? Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
  }) {
    return getHomeProductListPerCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchHomeCategoriesListEvent value)? fetchHomeCategories,
    TResult Function(GetHomeProductListEvent value)? getHomeProductList,
    TResult Function(GetHomeProductDetailsEvent value)? getHomeProductDetails,
    TResult Function(GetHomeProductListPerCategoryEvent value)?
        getHomeProductListPerCategory,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategory != null) {
      return getHomeProductListPerCategory(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListPerCategoryEvent implements HomeEvent {
  const factory GetHomeProductListPerCategoryEvent(
          {required final String categoryId}) =
      _$GetHomeProductListPerCategoryEventImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$GetHomeProductListPerCategoryEventImplCopyWith<
          _$GetHomeProductListPerCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomeCategorieLoadingImplCopyWith<$Res> {
  factory _$$HomeCategorieLoadingImplCopyWith(_$HomeCategorieLoadingImpl value,
          $Res Function(_$HomeCategorieLoadingImpl) then) =
      __$$HomeCategorieLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeCategorieLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeCategorieLoadingImpl>
    implements _$$HomeCategorieLoadingImplCopyWith<$Res> {
  __$$HomeCategorieLoadingImplCopyWithImpl(_$HomeCategorieLoadingImpl _value,
      $Res Function(_$HomeCategorieLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeCategorieLoadingImpl
    with DiagnosticableTreeMixin
    implements HomeCategorieLoading {
  const _$HomeCategorieLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.categoriesLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.categoriesLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeCategorieLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class HomeCategorieLoading implements HomeState {
  const factory HomeCategorieLoading() = _$HomeCategorieLoadingImpl;
}

/// @nodoc
abstract class _$$HomeProductsLoadingImplCopyWith<$Res> {
  factory _$$HomeProductsLoadingImplCopyWith(_$HomeProductsLoadingImpl value,
          $Res Function(_$HomeProductsLoadingImpl) then) =
      __$$HomeProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeProductsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeProductsLoadingImpl>
    implements _$$HomeProductsLoadingImplCopyWith<$Res> {
  __$$HomeProductsLoadingImplCopyWithImpl(_$HomeProductsLoadingImpl _value,
      $Res Function(_$HomeProductsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeProductsLoadingImpl
    with DiagnosticableTreeMixin
    implements HomeProductsLoading {
  const _$HomeProductsLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.productsLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.productsLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return productsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return productsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return productsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return productsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading(this);
    }
    return orElse();
  }
}

abstract class HomeProductsLoading implements HomeState {
  const factory HomeProductsLoading() = _$HomeProductsLoadingImpl;
}

/// @nodoc
abstract class _$$GetHomeCategoriesListSuccessImplCopyWith<$Res> {
  factory _$$GetHomeCategoriesListSuccessImplCopyWith(
          _$GetHomeCategoriesListSuccessImpl value,
          $Res Function(_$GetHomeCategoriesListSuccessImpl) then) =
      __$$GetHomeCategoriesListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryEntity> categoriesList});
}

/// @nodoc
class __$$GetHomeCategoriesListSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeCategoriesListSuccessImpl>
    implements _$$GetHomeCategoriesListSuccessImplCopyWith<$Res> {
  __$$GetHomeCategoriesListSuccessImplCopyWithImpl(
      _$GetHomeCategoriesListSuccessImpl _value,
      $Res Function(_$GetHomeCategoriesListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
  }) {
    return _then(_$GetHomeCategoriesListSuccessImpl(
      null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$GetHomeCategoriesListSuccessImpl
    with DiagnosticableTreeMixin
    implements GetHomeCategoriesListSuccess {
  const _$GetHomeCategoriesListSuccessImpl(
      final List<CategoryEntity> categoriesList)
      : _categoriesList = categoriesList;

  final List<CategoryEntity> _categoriesList;
  @override
  List<CategoryEntity> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeCategoriesListSuccess(categoriesList: $categoriesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeState.getHomeCategoriesListSuccess'))
      ..add(DiagnosticsProperty('categoriesList', categoriesList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeCategoriesListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeCategoriesListSuccessImplCopyWith<
          _$GetHomeCategoriesListSuccessImpl>
      get copyWith => __$$GetHomeCategoriesListSuccessImplCopyWithImpl<
          _$GetHomeCategoriesListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListSuccess(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListSuccess?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListSuccess != null) {
      return getHomeCategoriesListSuccess(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListSuccess != null) {
      return getHomeCategoriesListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetHomeCategoriesListSuccess implements HomeState {
  const factory GetHomeCategoriesListSuccess(
          final List<CategoryEntity> categoriesList) =
      _$GetHomeCategoriesListSuccessImpl;

  List<CategoryEntity> get categoriesList;
  @JsonKey(ignore: true)
  _$$GetHomeCategoriesListSuccessImplCopyWith<
          _$GetHomeCategoriesListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeCategoriesListEmptyImplCopyWith<$Res> {
  factory _$$GetHomeCategoriesListEmptyImplCopyWith(
          _$GetHomeCategoriesListEmptyImpl value,
          $Res Function(_$GetHomeCategoriesListEmptyImpl) then) =
      __$$GetHomeCategoriesListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeCategoriesListEmptyImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeCategoriesListEmptyImpl>
    implements _$$GetHomeCategoriesListEmptyImplCopyWith<$Res> {
  __$$GetHomeCategoriesListEmptyImplCopyWithImpl(
      _$GetHomeCategoriesListEmptyImpl _value,
      $Res Function(_$GetHomeCategoriesListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeCategoriesListEmptyImpl
    with DiagnosticableTreeMixin
    implements GetHomeCategoriesListEmpty {
  const _$GetHomeCategoriesListEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeCategoriesListEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'HomeState.getHomeCategoriesListEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeCategoriesListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListEmpty != null) {
      return getHomeCategoriesListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListEmpty != null) {
      return getHomeCategoriesListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetHomeCategoriesListEmpty implements HomeState {
  const factory GetHomeCategoriesListEmpty() = _$GetHomeCategoriesListEmptyImpl;
}

/// @nodoc
abstract class _$$GetHomeCategoriesListFailureImplCopyWith<$Res> {
  factory _$$GetHomeCategoriesListFailureImplCopyWith(
          _$GetHomeCategoriesListFailureImpl value,
          $Res Function(_$GetHomeCategoriesListFailureImpl) then) =
      __$$GetHomeCategoriesListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetHomeCategoriesListFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeCategoriesListFailureImpl>
    implements _$$GetHomeCategoriesListFailureImplCopyWith<$Res> {
  __$$GetHomeCategoriesListFailureImplCopyWithImpl(
      _$GetHomeCategoriesListFailureImpl _value,
      $Res Function(_$GetHomeCategoriesListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetHomeCategoriesListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeCategoriesListFailureImpl
    with DiagnosticableTreeMixin
    implements GetHomeCategoriesListFailure {
  const _$GetHomeCategoriesListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeCategoriesListFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeState.getHomeCategoriesListFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeCategoriesListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeCategoriesListFailureImplCopyWith<
          _$GetHomeCategoriesListFailureImpl>
      get copyWith => __$$GetHomeCategoriesListFailureImplCopyWithImpl<
          _$GetHomeCategoriesListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListFailure != null) {
      return getHomeCategoriesListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeCategoriesListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeCategoriesListFailure != null) {
      return getHomeCategoriesListFailure(this);
    }
    return orElse();
  }
}

abstract class GetHomeCategoriesListFailure implements HomeState {
  const factory GetHomeCategoriesListFailure(final String errorMessage) =
      _$GetHomeCategoriesListFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetHomeCategoriesListFailureImplCopyWith<
          _$GetHomeCategoriesListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductListSuccessImplCopyWith<$Res> {
  factory _$$GetHomeProductListSuccessImplCopyWith(
          _$GetHomeProductListSuccessImpl value,
          $Res Function(_$GetHomeProductListSuccessImpl) then) =
      __$$GetHomeProductListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetProductEntity> productList});
}

/// @nodoc
class __$$GetHomeProductListSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductListSuccessImpl>
    implements _$$GetHomeProductListSuccessImplCopyWith<$Res> {
  __$$GetHomeProductListSuccessImplCopyWithImpl(
      _$GetHomeProductListSuccessImpl _value,
      $Res Function(_$GetHomeProductListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
  }) {
    return _then(_$GetHomeProductListSuccessImpl(
      null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GetProductEntity>,
    ));
  }
}

/// @nodoc

class _$GetHomeProductListSuccessImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListSuccess {
  const _$GetHomeProductListSuccessImpl(
      final List<GetProductEntity> productList)
      : _productList = productList;

  final List<GetProductEntity> _productList;
  @override
  List<GetProductEntity> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListSuccess(productList: $productList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.getHomeProductListSuccess'))
      ..add(DiagnosticsProperty('productList', productList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductListSuccessImplCopyWith<_$GetHomeProductListSuccessImpl>
      get copyWith => __$$GetHomeProductListSuccessImplCopyWithImpl<
          _$GetHomeProductListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListSuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListSuccess?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListSuccess != null) {
      return getHomeProductListSuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListSuccess != null) {
      return getHomeProductListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListSuccess implements HomeState {
  const factory GetHomeProductListSuccess(
          final List<GetProductEntity> productList) =
      _$GetHomeProductListSuccessImpl;

  List<GetProductEntity> get productList;
  @JsonKey(ignore: true)
  _$$GetHomeProductListSuccessImplCopyWith<_$GetHomeProductListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductListEmptyImplCopyWith<$Res> {
  factory _$$GetHomeProductListEmptyImplCopyWith(
          _$GetHomeProductListEmptyImpl value,
          $Res Function(_$GetHomeProductListEmptyImpl) then) =
      __$$GetHomeProductListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeProductListEmptyImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductListEmptyImpl>
    implements _$$GetHomeProductListEmptyImplCopyWith<$Res> {
  __$$GetHomeProductListEmptyImplCopyWithImpl(
      _$GetHomeProductListEmptyImpl _value,
      $Res Function(_$GetHomeProductListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeProductListEmptyImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListEmpty {
  const _$GetHomeProductListEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeState.getHomeProductListEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListEmpty != null) {
      return getHomeProductListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListEmpty != null) {
      return getHomeProductListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListEmpty implements HomeState {
  const factory GetHomeProductListEmpty() = _$GetHomeProductListEmptyImpl;
}

/// @nodoc
abstract class _$$GetHomeProductListFailureImplCopyWith<$Res> {
  factory _$$GetHomeProductListFailureImplCopyWith(
          _$GetHomeProductListFailureImpl value,
          $Res Function(_$GetHomeProductListFailureImpl) then) =
      __$$GetHomeProductListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetHomeProductListFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductListFailureImpl>
    implements _$$GetHomeProductListFailureImplCopyWith<$Res> {
  __$$GetHomeProductListFailureImplCopyWithImpl(
      _$GetHomeProductListFailureImpl _value,
      $Res Function(_$GetHomeProductListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetHomeProductListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProductListFailureImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListFailure {
  const _$GetHomeProductListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.getHomeProductListFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductListFailureImplCopyWith<_$GetHomeProductListFailureImpl>
      get copyWith => __$$GetHomeProductListFailureImplCopyWithImpl<
          _$GetHomeProductListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListFailure != null) {
      return getHomeProductListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListFailure != null) {
      return getHomeProductListFailure(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListFailure implements HomeState {
  const factory GetHomeProductListFailure(final String errorMessage) =
      _$GetHomeProductListFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetHomeProductListFailureImplCopyWith<_$GetHomeProductListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductListPerCategorySuccessImplCopyWith<$Res> {
  factory _$$GetHomeProductListPerCategorySuccessImplCopyWith(
          _$GetHomeProductListPerCategorySuccessImpl value,
          $Res Function(_$GetHomeProductListPerCategorySuccessImpl) then) =
      __$$GetHomeProductListPerCategorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetProductEntity> productList});
}

/// @nodoc
class __$$GetHomeProductListPerCategorySuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res,
        _$GetHomeProductListPerCategorySuccessImpl>
    implements _$$GetHomeProductListPerCategorySuccessImplCopyWith<$Res> {
  __$$GetHomeProductListPerCategorySuccessImplCopyWithImpl(
      _$GetHomeProductListPerCategorySuccessImpl _value,
      $Res Function(_$GetHomeProductListPerCategorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
  }) {
    return _then(_$GetHomeProductListPerCategorySuccessImpl(
      null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GetProductEntity>,
    ));
  }
}

/// @nodoc

class _$GetHomeProductListPerCategorySuccessImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListPerCategorySuccess {
  const _$GetHomeProductListPerCategorySuccessImpl(
      final List<GetProductEntity> productList)
      : _productList = productList;

  final List<GetProductEntity> _productList;
  @override
  List<GetProductEntity> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListPerCategorySuccess(productList: $productList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeState.getHomeProductListPerCategorySuccess'))
      ..add(DiagnosticsProperty('productList', productList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListPerCategorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductListPerCategorySuccessImplCopyWith<
          _$GetHomeProductListPerCategorySuccessImpl>
      get copyWith => __$$GetHomeProductListPerCategorySuccessImplCopyWithImpl<
          _$GetHomeProductListPerCategorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategorySuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategorySuccess?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategorySuccess != null) {
      return getHomeProductListPerCategorySuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategorySuccess != null) {
      return getHomeProductListPerCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListPerCategorySuccess implements HomeState {
  const factory GetHomeProductListPerCategorySuccess(
          final List<GetProductEntity> productList) =
      _$GetHomeProductListPerCategorySuccessImpl;

  List<GetProductEntity> get productList;
  @JsonKey(ignore: true)
  _$$GetHomeProductListPerCategorySuccessImplCopyWith<
          _$GetHomeProductListPerCategorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductListPerCategoryEmptyImplCopyWith<$Res> {
  factory _$$GetHomeProductListPerCategoryEmptyImplCopyWith(
          _$GetHomeProductListPerCategoryEmptyImpl value,
          $Res Function(_$GetHomeProductListPerCategoryEmptyImpl) then) =
      __$$GetHomeProductListPerCategoryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeProductListPerCategoryEmptyImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res,
        _$GetHomeProductListPerCategoryEmptyImpl>
    implements _$$GetHomeProductListPerCategoryEmptyImplCopyWith<$Res> {
  __$$GetHomeProductListPerCategoryEmptyImplCopyWithImpl(
      _$GetHomeProductListPerCategoryEmptyImpl _value,
      $Res Function(_$GetHomeProductListPerCategoryEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeProductListPerCategoryEmptyImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListPerCategoryEmpty {
  const _$GetHomeProductListPerCategoryEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListPerCategoryEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'HomeState.getHomeProductListPerCategoryEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListPerCategoryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategoryEmpty != null) {
      return getHomeProductListPerCategoryEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategoryEmpty != null) {
      return getHomeProductListPerCategoryEmpty(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListPerCategoryEmpty implements HomeState {
  const factory GetHomeProductListPerCategoryEmpty() =
      _$GetHomeProductListPerCategoryEmptyImpl;
}

/// @nodoc
abstract class _$$GetHomeProductListPerCategoryFailureImplCopyWith<$Res> {
  factory _$$GetHomeProductListPerCategoryFailureImplCopyWith(
          _$GetHomeProductListPerCategoryFailureImpl value,
          $Res Function(_$GetHomeProductListPerCategoryFailureImpl) then) =
      __$$GetHomeProductListPerCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetHomeProductListPerCategoryFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res,
        _$GetHomeProductListPerCategoryFailureImpl>
    implements _$$GetHomeProductListPerCategoryFailureImplCopyWith<$Res> {
  __$$GetHomeProductListPerCategoryFailureImplCopyWithImpl(
      _$GetHomeProductListPerCategoryFailureImpl _value,
      $Res Function(_$GetHomeProductListPerCategoryFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetHomeProductListPerCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProductListPerCategoryFailureImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductListPerCategoryFailure {
  const _$GetHomeProductListPerCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductListPerCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeState.getHomeProductListPerCategoryFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductListPerCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductListPerCategoryFailureImplCopyWith<
          _$GetHomeProductListPerCategoryFailureImpl>
      get copyWith => __$$GetHomeProductListPerCategoryFailureImplCopyWithImpl<
          _$GetHomeProductListPerCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategoryFailure != null) {
      return getHomeProductListPerCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductListPerCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductListPerCategoryFailure != null) {
      return getHomeProductListPerCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductListPerCategoryFailure implements HomeState {
  const factory GetHomeProductListPerCategoryFailure(
      final String errorMessage) = _$GetHomeProductListPerCategoryFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetHomeProductListPerCategoryFailureImplCopyWith<
          _$GetHomeProductListPerCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductDetailsSuccessImplCopyWith<$Res> {
  factory _$$GetHomeProductDetailsSuccessImplCopyWith(
          _$GetHomeProductDetailsSuccessImpl value,
          $Res Function(_$GetHomeProductDetailsSuccessImpl) then) =
      __$$GetHomeProductDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductsDetailsEntity product});
}

/// @nodoc
class __$$GetHomeProductDetailsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductDetailsSuccessImpl>
    implements _$$GetHomeProductDetailsSuccessImplCopyWith<$Res> {
  __$$GetHomeProductDetailsSuccessImplCopyWithImpl(
      _$GetHomeProductDetailsSuccessImpl _value,
      $Res Function(_$GetHomeProductDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$GetHomeProductDetailsSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductsDetailsEntity,
    ));
  }
}

/// @nodoc

class _$GetHomeProductDetailsSuccessImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductDetailsSuccess {
  const _$GetHomeProductDetailsSuccessImpl(this.product);

  @override
  final ProductsDetailsEntity product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductDetailsSuccess(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeState.getHomeProductDetailsSuccess'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductDetailsSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductDetailsSuccessImplCopyWith<
          _$GetHomeProductDetailsSuccessImpl>
      get copyWith => __$$GetHomeProductDetailsSuccessImplCopyWithImpl<
          _$GetHomeProductDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsSuccess != null) {
      return getHomeProductDetailsSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsSuccess != null) {
      return getHomeProductDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductDetailsSuccess implements HomeState {
  const factory GetHomeProductDetailsSuccess(
      final ProductsDetailsEntity product) = _$GetHomeProductDetailsSuccessImpl;

  ProductsDetailsEntity get product;
  @JsonKey(ignore: true)
  _$$GetHomeProductDetailsSuccessImplCopyWith<
          _$GetHomeProductDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeProductDetailsEmptyImplCopyWith<$Res> {
  factory _$$GetHomeProductDetailsEmptyImplCopyWith(
          _$GetHomeProductDetailsEmptyImpl value,
          $Res Function(_$GetHomeProductDetailsEmptyImpl) then) =
      __$$GetHomeProductDetailsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeProductDetailsEmptyImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductDetailsEmptyImpl>
    implements _$$GetHomeProductDetailsEmptyImplCopyWith<$Res> {
  __$$GetHomeProductDetailsEmptyImplCopyWithImpl(
      _$GetHomeProductDetailsEmptyImpl _value,
      $Res Function(_$GetHomeProductDetailsEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeProductDetailsEmptyImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductDetailsEmpty {
  const _$GetHomeProductDetailsEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductDetailsEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'HomeState.getHomeProductDetailsEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductDetailsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsEmpty != null) {
      return getHomeProductDetailsEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsEmpty != null) {
      return getHomeProductDetailsEmpty(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductDetailsEmpty implements HomeState {
  const factory GetHomeProductDetailsEmpty() = _$GetHomeProductDetailsEmptyImpl;
}

/// @nodoc
abstract class _$$GetHomeProductDetailsFailureImplCopyWith<$Res> {
  factory _$$GetHomeProductDetailsFailureImplCopyWith(
          _$GetHomeProductDetailsFailureImpl value,
          $Res Function(_$GetHomeProductDetailsFailureImpl) then) =
      __$$GetHomeProductDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetHomeProductDetailsFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeProductDetailsFailureImpl>
    implements _$$GetHomeProductDetailsFailureImplCopyWith<$Res> {
  __$$GetHomeProductDetailsFailureImplCopyWithImpl(
      _$GetHomeProductDetailsFailureImpl _value,
      $Res Function(_$GetHomeProductDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetHomeProductDetailsFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeProductDetailsFailureImpl
    with DiagnosticableTreeMixin
    implements GetHomeProductDetailsFailure {
  const _$GetHomeProductDetailsFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.getHomeProductDetailsFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeState.getHomeProductDetailsFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeProductDetailsFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeProductDetailsFailureImplCopyWith<
          _$GetHomeProductDetailsFailureImpl>
      get copyWith => __$$GetHomeProductDetailsFailureImplCopyWithImpl<
          _$GetHomeProductDetailsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function() productsLoading,
    required TResult Function(List<CategoryEntity> categoriesList)
        getHomeCategoriesListSuccess,
    required TResult Function() getHomeCategoriesListEmpty,
    required TResult Function(String errorMessage) getHomeCategoriesListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListSuccess,
    required TResult Function() getHomeProductListEmpty,
    required TResult Function(String errorMessage) getHomeProductListFailure,
    required TResult Function(List<GetProductEntity> productList)
        getHomeProductListPerCategorySuccess,
    required TResult Function() getHomeProductListPerCategoryEmpty,
    required TResult Function(String errorMessage)
        getHomeProductListPerCategoryFailure,
    required TResult Function(ProductsDetailsEntity product)
        getHomeProductDetailsSuccess,
    required TResult Function() getHomeProductDetailsEmpty,
    required TResult Function(String errorMessage) getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function()? productsLoading,
    TResult? Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult? Function()? getHomeCategoriesListEmpty,
    TResult? Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult? Function()? getHomeProductListEmpty,
    TResult? Function(String errorMessage)? getHomeProductListFailure,
    TResult? Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult? Function()? getHomeProductListPerCategoryEmpty,
    TResult? Function(String errorMessage)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult? Function()? getHomeProductDetailsEmpty,
    TResult? Function(String errorMessage)? getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function()? productsLoading,
    TResult Function(List<CategoryEntity> categoriesList)?
        getHomeCategoriesListSuccess,
    TResult Function()? getHomeCategoriesListEmpty,
    TResult Function(String errorMessage)? getHomeCategoriesListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListSuccess,
    TResult Function()? getHomeProductListEmpty,
    TResult Function(String errorMessage)? getHomeProductListFailure,
    TResult Function(List<GetProductEntity> productList)?
        getHomeProductListPerCategorySuccess,
    TResult Function()? getHomeProductListPerCategoryEmpty,
    TResult Function(String errorMessage)? getHomeProductListPerCategoryFailure,
    TResult Function(ProductsDetailsEntity product)?
        getHomeProductDetailsSuccess,
    TResult Function()? getHomeProductDetailsEmpty,
    TResult Function(String errorMessage)? getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsFailure != null) {
      return getHomeProductDetailsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomeCategorieLoading value) categoriesLoading,
    required TResult Function(HomeProductsLoading value) productsLoading,
    required TResult Function(GetHomeCategoriesListSuccess value)
        getHomeCategoriesListSuccess,
    required TResult Function(GetHomeCategoriesListEmpty value)
        getHomeCategoriesListEmpty,
    required TResult Function(GetHomeCategoriesListFailure value)
        getHomeCategoriesListFailure,
    required TResult Function(GetHomeProductListSuccess value)
        getHomeProductListSuccess,
    required TResult Function(GetHomeProductListEmpty value)
        getHomeProductListEmpty,
    required TResult Function(GetHomeProductListFailure value)
        getHomeProductListFailure,
    required TResult Function(GetHomeProductListPerCategorySuccess value)
        getHomeProductListPerCategorySuccess,
    required TResult Function(GetHomeProductListPerCategoryEmpty value)
        getHomeProductListPerCategoryEmpty,
    required TResult Function(GetHomeProductListPerCategoryFailure value)
        getHomeProductListPerCategoryFailure,
    required TResult Function(GetHomeProductDetailsSuccess value)
        getHomeProductDetailsSuccess,
    required TResult Function(GetHomeProductDetailsEmpty value)
        getHomeProductDetailsEmpty,
    required TResult Function(GetHomeProductDetailsFailure value)
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomeCategorieLoading value)? categoriesLoading,
    TResult? Function(HomeProductsLoading value)? productsLoading,
    TResult? Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult? Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult? Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult? Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult? Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult? Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult? Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult? Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult? Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult? Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult? Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult? Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
  }) {
    return getHomeProductDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomeCategorieLoading value)? categoriesLoading,
    TResult Function(HomeProductsLoading value)? productsLoading,
    TResult Function(GetHomeCategoriesListSuccess value)?
        getHomeCategoriesListSuccess,
    TResult Function(GetHomeCategoriesListEmpty value)?
        getHomeCategoriesListEmpty,
    TResult Function(GetHomeCategoriesListFailure value)?
        getHomeCategoriesListFailure,
    TResult Function(GetHomeProductListSuccess value)?
        getHomeProductListSuccess,
    TResult Function(GetHomeProductListEmpty value)? getHomeProductListEmpty,
    TResult Function(GetHomeProductListFailure value)?
        getHomeProductListFailure,
    TResult Function(GetHomeProductListPerCategorySuccess value)?
        getHomeProductListPerCategorySuccess,
    TResult Function(GetHomeProductListPerCategoryEmpty value)?
        getHomeProductListPerCategoryEmpty,
    TResult Function(GetHomeProductListPerCategoryFailure value)?
        getHomeProductListPerCategoryFailure,
    TResult Function(GetHomeProductDetailsSuccess value)?
        getHomeProductDetailsSuccess,
    TResult Function(GetHomeProductDetailsEmpty value)?
        getHomeProductDetailsEmpty,
    TResult Function(GetHomeProductDetailsFailure value)?
        getHomeProductDetailsFailure,
    required TResult orElse(),
  }) {
    if (getHomeProductDetailsFailure != null) {
      return getHomeProductDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class GetHomeProductDetailsFailure implements HomeState {
  const factory GetHomeProductDetailsFailure(final String errorMessage) =
      _$GetHomeProductDetailsFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetHomeProductDetailsFailureImplCopyWith<
          _$GetHomeProductDetailsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
