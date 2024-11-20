// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductEventCopyWith<$Res> {
  factory $AdminProductEventCopyWith(
          AdminProductEvent value, $Res Function(AdminProductEvent) then) =
      _$AdminProductEventCopyWithImpl<$Res, AdminProductEvent>;
}

/// @nodoc
class _$AdminProductEventCopyWithImpl<$Res, $Val extends AdminProductEvent>
    implements $AdminProductEventCopyWith<$Res> {
  _$AdminProductEventCopyWithImpl(this._value, this._then);

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
    extends _$AdminProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AdminProductEvent.started()';
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
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
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
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAdminProductListEventImplCopyWith<$Res> {
  factory _$$GetAdminProductListEventImplCopyWith(
          _$GetAdminProductListEventImpl value,
          $Res Function(_$GetAdminProductListEventImpl) then) =
      __$$GetAdminProductListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdminProductListEventImplCopyWithImpl<$Res>
    extends _$AdminProductEventCopyWithImpl<$Res,
        _$GetAdminProductListEventImpl>
    implements _$$GetAdminProductListEventImplCopyWith<$Res> {
  __$$GetAdminProductListEventImplCopyWithImpl(
      _$GetAdminProductListEventImpl _value,
      $Res Function(_$GetAdminProductListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAdminProductListEventImpl implements GetAdminProductListEvent {
  const _$GetAdminProductListEventImpl();

  @override
  String toString() {
    return 'AdminProductEvent.getAdminProductList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return getAdminProductList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return getAdminProductList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (getAdminProductList != null) {
      return getAdminProductList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return getAdminProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return getAdminProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (getAdminProductList != null) {
      return getAdminProductList(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductListEvent implements AdminProductEvent {
  const factory GetAdminProductListEvent() = _$GetAdminProductListEventImpl;
}

/// @nodoc
abstract class _$$GetAdminProductDetailsEventImplCopyWith<$Res> {
  factory _$$GetAdminProductDetailsEventImplCopyWith(
          _$GetAdminProductDetailsEventImpl value,
          $Res Function(_$GetAdminProductDetailsEventImpl) then) =
      __$$GetAdminProductDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$GetAdminProductDetailsEventImplCopyWithImpl<$Res>
    extends _$AdminProductEventCopyWithImpl<$Res,
        _$GetAdminProductDetailsEventImpl>
    implements _$$GetAdminProductDetailsEventImplCopyWith<$Res> {
  __$$GetAdminProductDetailsEventImplCopyWithImpl(
      _$GetAdminProductDetailsEventImpl _value,
      $Res Function(_$GetAdminProductDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GetAdminProductDetailsEventImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAdminProductDetailsEventImpl implements GetAdminProductDetailsEvent {
  const _$GetAdminProductDetailsEventImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'AdminProductEvent.getAdminProductDetails(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductDetailsEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminProductDetailsEventImplCopyWith<_$GetAdminProductDetailsEventImpl>
      get copyWith => __$$GetAdminProductDetailsEventImplCopyWithImpl<
          _$GetAdminProductDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return getAdminProductDetails(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return getAdminProductDetails?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (getAdminProductDetails != null) {
      return getAdminProductDetails(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return getAdminProductDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return getAdminProductDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (getAdminProductDetails != null) {
      return getAdminProductDetails(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductDetailsEvent implements AdminProductEvent {
  const factory GetAdminProductDetailsEvent({required final String productId}) =
      _$GetAdminProductDetailsEventImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$GetAdminProductDetailsEventImplCopyWith<_$GetAdminProductDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAdminProductEventImplCopyWith<$Res> {
  factory _$$CreateAdminProductEventImplCopyWith(
          _$CreateAdminProductEventImpl value,
          $Res Function(_$CreateAdminProductEventImpl) then) =
      __$$CreateAdminProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProductEntity body});
}

/// @nodoc
class __$$CreateAdminProductEventImplCopyWithImpl<$Res>
    extends _$AdminProductEventCopyWithImpl<$Res, _$CreateAdminProductEventImpl>
    implements _$$CreateAdminProductEventImplCopyWith<$Res> {
  __$$CreateAdminProductEventImplCopyWithImpl(
      _$CreateAdminProductEventImpl _value,
      $Res Function(_$CreateAdminProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$CreateAdminProductEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as CreateProductEntity,
    ));
  }
}

/// @nodoc

class _$CreateAdminProductEventImpl implements CreateAdminProductEvent {
  const _$CreateAdminProductEventImpl({required this.body});

  @override
  final CreateProductEntity body;

  @override
  String toString() {
    return 'AdminProductEvent.createAdminProduct(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdminProductEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdminProductEventImplCopyWith<_$CreateAdminProductEventImpl>
      get copyWith => __$$CreateAdminProductEventImplCopyWithImpl<
          _$CreateAdminProductEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return createAdminProduct(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return createAdminProduct?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (createAdminProduct != null) {
      return createAdminProduct(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return createAdminProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return createAdminProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (createAdminProduct != null) {
      return createAdminProduct(this);
    }
    return orElse();
  }
}

abstract class CreateAdminProductEvent implements AdminProductEvent {
  const factory CreateAdminProductEvent(
          {required final CreateProductEntity body}) =
      _$CreateAdminProductEventImpl;

  CreateProductEntity get body;
  @JsonKey(ignore: true)
  _$$CreateAdminProductEventImplCopyWith<_$CreateAdminProductEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAdminProductEventImplCopyWith<$Res> {
  factory _$$UpdateAdminProductEventImplCopyWith(
          _$UpdateAdminProductEventImpl value,
          $Res Function(_$UpdateAdminProductEventImpl) then) =
      __$$UpdateAdminProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProductEntity body});
}

/// @nodoc
class __$$UpdateAdminProductEventImplCopyWithImpl<$Res>
    extends _$AdminProductEventCopyWithImpl<$Res, _$UpdateAdminProductEventImpl>
    implements _$$UpdateAdminProductEventImplCopyWith<$Res> {
  __$$UpdateAdminProductEventImplCopyWithImpl(
      _$UpdateAdminProductEventImpl _value,
      $Res Function(_$UpdateAdminProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$UpdateAdminProductEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateProductEntity,
    ));
  }
}

/// @nodoc

class _$UpdateAdminProductEventImpl implements UpdateAdminProductEvent {
  const _$UpdateAdminProductEventImpl({required this.body});

  @override
  final UpdateProductEntity body;

  @override
  String toString() {
    return 'AdminProductEvent.updateAdminProduct(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAdminProductEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAdminProductEventImplCopyWith<_$UpdateAdminProductEventImpl>
      get copyWith => __$$UpdateAdminProductEventImplCopyWithImpl<
          _$UpdateAdminProductEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return updateAdminProduct(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return updateAdminProduct?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (updateAdminProduct != null) {
      return updateAdminProduct(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return updateAdminProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return updateAdminProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (updateAdminProduct != null) {
      return updateAdminProduct(this);
    }
    return orElse();
  }
}

abstract class UpdateAdminProductEvent implements AdminProductEvent {
  const factory UpdateAdminProductEvent(
          {required final UpdateProductEntity body}) =
      _$UpdateAdminProductEventImpl;

  UpdateProductEntity get body;
  @JsonKey(ignore: true)
  _$$UpdateAdminProductEventImplCopyWith<_$UpdateAdminProductEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAdminProductEventImplCopyWith<$Res> {
  factory _$$DeleteAdminProductEventImplCopyWith(
          _$DeleteAdminProductEventImpl value,
          $Res Function(_$DeleteAdminProductEventImpl) then) =
      __$$DeleteAdminProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$DeleteAdminProductEventImplCopyWithImpl<$Res>
    extends _$AdminProductEventCopyWithImpl<$Res, _$DeleteAdminProductEventImpl>
    implements _$$DeleteAdminProductEventImplCopyWith<$Res> {
  __$$DeleteAdminProductEventImplCopyWithImpl(
      _$DeleteAdminProductEventImpl _value,
      $Res Function(_$DeleteAdminProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$DeleteAdminProductEventImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAdminProductEventImpl implements DeleteAdminProductEvent {
  const _$DeleteAdminProductEventImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'AdminProductEvent.deleteAdminProduct(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAdminProductEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAdminProductEventImplCopyWith<_$DeleteAdminProductEventImpl>
      get copyWith => __$$DeleteAdminProductEventImplCopyWithImpl<
          _$DeleteAdminProductEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAdminProductList,
    required TResult Function(String productId) getAdminProductDetails,
    required TResult Function(CreateProductEntity body) createAdminProduct,
    required TResult Function(UpdateProductEntity body) updateAdminProduct,
    required TResult Function(String productId) deleteAdminProduct,
  }) {
    return deleteAdminProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAdminProductList,
    TResult? Function(String productId)? getAdminProductDetails,
    TResult? Function(CreateProductEntity body)? createAdminProduct,
    TResult? Function(UpdateProductEntity body)? updateAdminProduct,
    TResult? Function(String productId)? deleteAdminProduct,
  }) {
    return deleteAdminProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAdminProductList,
    TResult Function(String productId)? getAdminProductDetails,
    TResult Function(CreateProductEntity body)? createAdminProduct,
    TResult Function(UpdateProductEntity body)? updateAdminProduct,
    TResult Function(String productId)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (deleteAdminProduct != null) {
      return deleteAdminProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAdminProductListEvent value)
        getAdminProductList,
    required TResult Function(GetAdminProductDetailsEvent value)
        getAdminProductDetails,
    required TResult Function(CreateAdminProductEvent value) createAdminProduct,
    required TResult Function(UpdateAdminProductEvent value) updateAdminProduct,
    required TResult Function(DeleteAdminProductEvent value) deleteAdminProduct,
  }) {
    return deleteAdminProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult? Function(GetAdminProductDetailsEvent value)?
        getAdminProductDetails,
    TResult? Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult? Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult? Function(DeleteAdminProductEvent value)? deleteAdminProduct,
  }) {
    return deleteAdminProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAdminProductListEvent value)? getAdminProductList,
    TResult Function(GetAdminProductDetailsEvent value)? getAdminProductDetails,
    TResult Function(CreateAdminProductEvent value)? createAdminProduct,
    TResult Function(UpdateAdminProductEvent value)? updateAdminProduct,
    TResult Function(DeleteAdminProductEvent value)? deleteAdminProduct,
    required TResult orElse(),
  }) {
    if (deleteAdminProduct != null) {
      return deleteAdminProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteAdminProductEvent implements AdminProductEvent {
  const factory DeleteAdminProductEvent({required final String productId}) =
      _$DeleteAdminProductEventImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$DeleteAdminProductEventImplCopyWith<_$DeleteAdminProductEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductStateCopyWith<$Res> {
  factory $AdminProductStateCopyWith(
          AdminProductState value, $Res Function(AdminProductState) then) =
      _$AdminProductStateCopyWithImpl<$Res, AdminProductState>;
}

/// @nodoc
class _$AdminProductStateCopyWithImpl<$Res, $Val extends AdminProductState>
    implements $AdminProductStateCopyWith<$Res> {
  _$AdminProductStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AdminProductState.initial()';
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
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
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
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdminProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AdminProductLoadingImplCopyWith<$Res> {
  factory _$$AdminProductLoadingImplCopyWith(_$AdminProductLoadingImpl value,
          $Res Function(_$AdminProductLoadingImpl) then) =
      __$$AdminProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminProductLoadingImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$AdminProductLoadingImpl>
    implements _$$AdminProductLoadingImplCopyWith<$Res> {
  __$$AdminProductLoadingImplCopyWithImpl(_$AdminProductLoadingImpl _value,
      $Res Function(_$AdminProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AdminProductLoadingImpl implements AdminProductLoading {
  const _$AdminProductLoadingImpl();

  @override
  String toString() {
    return 'AdminProductState.adminProductLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return adminProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return adminProductLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (adminProductLoading != null) {
      return adminProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return adminProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return adminProductLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (adminProductLoading != null) {
      return adminProductLoading(this);
    }
    return orElse();
  }
}

abstract class AdminProductLoading implements AdminProductState {
  const factory AdminProductLoading() = _$AdminProductLoadingImpl;
}

/// @nodoc
abstract class _$$GetAdminProductListSuccessImplCopyWith<$Res> {
  factory _$$GetAdminProductListSuccessImplCopyWith(
          _$GetAdminProductListSuccessImpl value,
          $Res Function(_$GetAdminProductListSuccessImpl) then) =
      __$$GetAdminProductListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetProductEntity>? productList});
}

/// @nodoc
class __$$GetAdminProductListSuccessImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductListSuccessImpl>
    implements _$$GetAdminProductListSuccessImplCopyWith<$Res> {
  __$$GetAdminProductListSuccessImplCopyWithImpl(
      _$GetAdminProductListSuccessImpl _value,
      $Res Function(_$GetAdminProductListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_$GetAdminProductListSuccessImpl(
      freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GetProductEntity>?,
    ));
  }
}

/// @nodoc

class _$GetAdminProductListSuccessImpl implements GetAdminProductListSuccess {
  const _$GetAdminProductListSuccessImpl(
      final List<GetProductEntity>? productList)
      : _productList = productList;

  final List<GetProductEntity>? _productList;
  @override
  List<GetProductEntity>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdminProductState.getAdminProductListSuccess(productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminProductListSuccessImplCopyWith<_$GetAdminProductListSuccessImpl>
      get copyWith => __$$GetAdminProductListSuccessImplCopyWithImpl<
          _$GetAdminProductListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductListSuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductListSuccess?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListSuccess != null) {
      return getAdminProductListSuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListSuccess != null) {
      return getAdminProductListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductListSuccess implements AdminProductState {
  const factory GetAdminProductListSuccess(
          final List<GetProductEntity>? productList) =
      _$GetAdminProductListSuccessImpl;

  List<GetProductEntity>? get productList;
  @JsonKey(ignore: true)
  _$$GetAdminProductListSuccessImplCopyWith<_$GetAdminProductListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAdminProductListEmptyImplCopyWith<$Res> {
  factory _$$GetAdminProductListEmptyImplCopyWith(
          _$GetAdminProductListEmptyImpl value,
          $Res Function(_$GetAdminProductListEmptyImpl) then) =
      __$$GetAdminProductListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdminProductListEmptyImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductListEmptyImpl>
    implements _$$GetAdminProductListEmptyImplCopyWith<$Res> {
  __$$GetAdminProductListEmptyImplCopyWithImpl(
      _$GetAdminProductListEmptyImpl _value,
      $Res Function(_$GetAdminProductListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAdminProductListEmptyImpl implements GetAdminProductListEmpty {
  const _$GetAdminProductListEmptyImpl();

  @override
  String toString() {
    return 'AdminProductState.getAdminProductListEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListEmpty != null) {
      return getAdminProductListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListEmpty != null) {
      return getAdminProductListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductListEmpty implements AdminProductState {
  const factory GetAdminProductListEmpty() = _$GetAdminProductListEmptyImpl;
}

/// @nodoc
abstract class _$$GetAdminProductListFailureImplCopyWith<$Res> {
  factory _$$GetAdminProductListFailureImplCopyWith(
          _$GetAdminProductListFailureImpl value,
          $Res Function(_$GetAdminProductListFailureImpl) then) =
      __$$GetAdminProductListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetAdminProductListFailureImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductListFailureImpl>
    implements _$$GetAdminProductListFailureImplCopyWith<$Res> {
  __$$GetAdminProductListFailureImplCopyWithImpl(
      _$GetAdminProductListFailureImpl _value,
      $Res Function(_$GetAdminProductListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetAdminProductListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAdminProductListFailureImpl implements GetAdminProductListFailure {
  const _$GetAdminProductListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminProductState.getAdminProductListFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminProductListFailureImplCopyWith<_$GetAdminProductListFailureImpl>
      get copyWith => __$$GetAdminProductListFailureImplCopyWithImpl<
          _$GetAdminProductListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListFailure != null) {
      return getAdminProductListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductListFailure != null) {
      return getAdminProductListFailure(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductListFailure implements AdminProductState {
  const factory GetAdminProductListFailure(final String errorMessage) =
      _$GetAdminProductListFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetAdminProductListFailureImplCopyWith<_$GetAdminProductListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAdminProductDetailsSuccessImplCopyWith<$Res> {
  factory _$$GetAdminProductDetailsSuccessImplCopyWith(
          _$GetAdminProductDetailsSuccessImpl value,
          $Res Function(_$GetAdminProductDetailsSuccessImpl) then) =
      __$$GetAdminProductDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductsDetailsEntity product});
}

/// @nodoc
class __$$GetAdminProductDetailsSuccessImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductDetailsSuccessImpl>
    implements _$$GetAdminProductDetailsSuccessImplCopyWith<$Res> {
  __$$GetAdminProductDetailsSuccessImplCopyWithImpl(
      _$GetAdminProductDetailsSuccessImpl _value,
      $Res Function(_$GetAdminProductDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$GetAdminProductDetailsSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductsDetailsEntity,
    ));
  }
}

/// @nodoc

class _$GetAdminProductDetailsSuccessImpl
    implements GetAdminProductDetailsSuccess {
  const _$GetAdminProductDetailsSuccessImpl(this.product);

  @override
  final ProductsDetailsEntity product;

  @override
  String toString() {
    return 'AdminProductState.getAdminProductDetailsSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductDetailsSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminProductDetailsSuccessImplCopyWith<
          _$GetAdminProductDetailsSuccessImpl>
      get copyWith => __$$GetAdminProductDetailsSuccessImplCopyWithImpl<
          _$GetAdminProductDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductDetailsSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductDetailsSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsSuccess != null) {
      return getAdminProductDetailsSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsSuccess != null) {
      return getAdminProductDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductDetailsSuccess implements AdminProductState {
  const factory GetAdminProductDetailsSuccess(
          final ProductsDetailsEntity product) =
      _$GetAdminProductDetailsSuccessImpl;

  ProductsDetailsEntity get product;
  @JsonKey(ignore: true)
  _$$GetAdminProductDetailsSuccessImplCopyWith<
          _$GetAdminProductDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAdminProductDetailsEmptyImplCopyWith<$Res> {
  factory _$$GetAdminProductDetailsEmptyImplCopyWith(
          _$GetAdminProductDetailsEmptyImpl value,
          $Res Function(_$GetAdminProductDetailsEmptyImpl) then) =
      __$$GetAdminProductDetailsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdminProductDetailsEmptyImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductDetailsEmptyImpl>
    implements _$$GetAdminProductDetailsEmptyImplCopyWith<$Res> {
  __$$GetAdminProductDetailsEmptyImplCopyWithImpl(
      _$GetAdminProductDetailsEmptyImpl _value,
      $Res Function(_$GetAdminProductDetailsEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAdminProductDetailsEmptyImpl implements GetAdminProductDetailsEmpty {
  const _$GetAdminProductDetailsEmptyImpl();

  @override
  String toString() {
    return 'AdminProductState.getAdminProductDetailsEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductDetailsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductDetailsEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductDetailsEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsEmpty != null) {
      return getAdminProductDetailsEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductDetailsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductDetailsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsEmpty != null) {
      return getAdminProductDetailsEmpty(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductDetailsEmpty implements AdminProductState {
  const factory GetAdminProductDetailsEmpty() =
      _$GetAdminProductDetailsEmptyImpl;
}

/// @nodoc
abstract class _$$GetAdminProductDetailsFailureImplCopyWith<$Res> {
  factory _$$GetAdminProductDetailsFailureImplCopyWith(
          _$GetAdminProductDetailsFailureImpl value,
          $Res Function(_$GetAdminProductDetailsFailureImpl) then) =
      __$$GetAdminProductDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetAdminProductDetailsFailureImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res,
        _$GetAdminProductDetailsFailureImpl>
    implements _$$GetAdminProductDetailsFailureImplCopyWith<$Res> {
  __$$GetAdminProductDetailsFailureImplCopyWithImpl(
      _$GetAdminProductDetailsFailureImpl _value,
      $Res Function(_$GetAdminProductDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetAdminProductDetailsFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAdminProductDetailsFailureImpl
    implements GetAdminProductDetailsFailure {
  const _$GetAdminProductDetailsFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminProductState.getAdminProductDetailsFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminProductDetailsFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminProductDetailsFailureImplCopyWith<
          _$GetAdminProductDetailsFailureImpl>
      get copyWith => __$$GetAdminProductDetailsFailureImplCopyWithImpl<
          _$GetAdminProductDetailsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return getAdminProductDetailsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return getAdminProductDetailsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsFailure != null) {
      return getAdminProductDetailsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return getAdminProductDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return getAdminProductDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (getAdminProductDetailsFailure != null) {
      return getAdminProductDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class GetAdminProductDetailsFailure implements AdminProductState {
  const factory GetAdminProductDetailsFailure(final String errorMessage) =
      _$GetAdminProductDetailsFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetAdminProductDetailsFailureImplCopyWith<
          _$GetAdminProductDetailsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewProductSuccessImplCopyWith<$Res> {
  factory _$$CreateNewProductSuccessImplCopyWith(
          _$CreateNewProductSuccessImpl value,
          $Res Function(_$CreateNewProductSuccessImpl) then) =
      __$$CreateNewProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$CreateNewProductSuccessImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$CreateNewProductSuccessImpl>
    implements _$$CreateNewProductSuccessImplCopyWith<$Res> {
  __$$CreateNewProductSuccessImplCopyWithImpl(
      _$CreateNewProductSuccessImpl _value,
      $Res Function(_$CreateNewProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$CreateNewProductSuccessImpl(
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewProductSuccessImpl implements CreateNewProductSuccess {
  const _$CreateNewProductSuccessImpl(this.body);

  @override
  final String body;

  @override
  String toString() {
    return 'AdminProductState.createNewProductSuccess(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewProductSuccessImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewProductSuccessImplCopyWith<_$CreateNewProductSuccessImpl>
      get copyWith => __$$CreateNewProductSuccessImplCopyWithImpl<
          _$CreateNewProductSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return createNewProductSuccess(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return createNewProductSuccess?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (createNewProductSuccess != null) {
      return createNewProductSuccess(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return createNewProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return createNewProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (createNewProductSuccess != null) {
      return createNewProductSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateNewProductSuccess implements AdminProductState {
  const factory CreateNewProductSuccess(final String body) =
      _$CreateNewProductSuccessImpl;

  String get body;
  @JsonKey(ignore: true)
  _$$CreateNewProductSuccessImplCopyWith<_$CreateNewProductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewProductFailureImplCopyWith<$Res> {
  factory _$$CreateNewProductFailureImplCopyWith(
          _$CreateNewProductFailureImpl value,
          $Res Function(_$CreateNewProductFailureImpl) then) =
      __$$CreateNewProductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CreateNewProductFailureImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$CreateNewProductFailureImpl>
    implements _$$CreateNewProductFailureImplCopyWith<$Res> {
  __$$CreateNewProductFailureImplCopyWithImpl(
      _$CreateNewProductFailureImpl _value,
      $Res Function(_$CreateNewProductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CreateNewProductFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewProductFailureImpl implements CreateNewProductFailure {
  const _$CreateNewProductFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminProductState.createNewProductFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewProductFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewProductFailureImplCopyWith<_$CreateNewProductFailureImpl>
      get copyWith => __$$CreateNewProductFailureImplCopyWithImpl<
          _$CreateNewProductFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return createNewProductFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return createNewProductFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (createNewProductFailure != null) {
      return createNewProductFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return createNewProductFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return createNewProductFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (createNewProductFailure != null) {
      return createNewProductFailure(this);
    }
    return orElse();
  }
}

abstract class CreateNewProductFailure implements AdminProductState {
  const factory CreateNewProductFailure(final String errorMessage) =
      _$CreateNewProductFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CreateNewProductFailureImplCopyWith<_$CreateNewProductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductSuccessImplCopyWith<$Res> {
  factory _$$UpdateProductSuccessImplCopyWith(_$UpdateProductSuccessImpl value,
          $Res Function(_$UpdateProductSuccessImpl) then) =
      __$$UpdateProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$UpdateProductSuccessImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$UpdateProductSuccessImpl>
    implements _$$UpdateProductSuccessImplCopyWith<$Res> {
  __$$UpdateProductSuccessImplCopyWithImpl(_$UpdateProductSuccessImpl _value,
      $Res Function(_$UpdateProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$UpdateProductSuccessImpl(
      null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProductSuccessImpl implements UpdateProductSuccess {
  const _$UpdateProductSuccessImpl(this.body);

  @override
  final String body;

  @override
  String toString() {
    return 'AdminProductState.updateProductSuccess(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductSuccessImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductSuccessImplCopyWith<_$UpdateProductSuccessImpl>
      get copyWith =>
          __$$UpdateProductSuccessImplCopyWithImpl<_$UpdateProductSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return updateProductSuccess(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return updateProductSuccess?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (updateProductSuccess != null) {
      return updateProductSuccess(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return updateProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return updateProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (updateProductSuccess != null) {
      return updateProductSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateProductSuccess implements AdminProductState {
  const factory UpdateProductSuccess(final String body) =
      _$UpdateProductSuccessImpl;

  String get body;
  @JsonKey(ignore: true)
  _$$UpdateProductSuccessImplCopyWith<_$UpdateProductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductFailureImplCopyWith<$Res> {
  factory _$$UpdateProductFailureImplCopyWith(_$UpdateProductFailureImpl value,
          $Res Function(_$UpdateProductFailureImpl) then) =
      __$$UpdateProductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UpdateProductFailureImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$UpdateProductFailureImpl>
    implements _$$UpdateProductFailureImplCopyWith<$Res> {
  __$$UpdateProductFailureImplCopyWithImpl(_$UpdateProductFailureImpl _value,
      $Res Function(_$UpdateProductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UpdateProductFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProductFailureImpl implements UpdateProductFailure {
  const _$UpdateProductFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminProductState.updateProductFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductFailureImplCopyWith<_$UpdateProductFailureImpl>
      get copyWith =>
          __$$UpdateProductFailureImplCopyWithImpl<_$UpdateProductFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return updateProductFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return updateProductFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (updateProductFailure != null) {
      return updateProductFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return updateProductFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return updateProductFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (updateProductFailure != null) {
      return updateProductFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateProductFailure implements AdminProductState {
  const factory UpdateProductFailure(final String errorMessage) =
      _$UpdateProductFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$UpdateProductFailureImplCopyWith<_$UpdateProductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductSuccessImplCopyWith<$Res> {
  factory _$$DeleteProductSuccessImplCopyWith(_$DeleteProductSuccessImpl value,
          $Res Function(_$DeleteProductSuccessImpl) then) =
      __$$DeleteProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDeleted});
}

/// @nodoc
class __$$DeleteProductSuccessImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$DeleteProductSuccessImpl>
    implements _$$DeleteProductSuccessImplCopyWith<$Res> {
  __$$DeleteProductSuccessImplCopyWithImpl(_$DeleteProductSuccessImpl _value,
      $Res Function(_$DeleteProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleted = null,
  }) {
    return _then(_$DeleteProductSuccessImpl(
      null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeleteProductSuccessImpl implements DeleteProductSuccess {
  const _$DeleteProductSuccessImpl(this.isDeleted);

  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'AdminProductState.deleteProductSuccess(isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductSuccessImpl &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductSuccessImplCopyWith<_$DeleteProductSuccessImpl>
      get copyWith =>
          __$$DeleteProductSuccessImplCopyWithImpl<_$DeleteProductSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return deleteProductSuccess(isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return deleteProductSuccess?.call(isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (deleteProductSuccess != null) {
      return deleteProductSuccess(isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return deleteProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return deleteProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (deleteProductSuccess != null) {
      return deleteProductSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteProductSuccess implements AdminProductState {
  const factory DeleteProductSuccess(final bool isDeleted) =
      _$DeleteProductSuccessImpl;

  bool get isDeleted;
  @JsonKey(ignore: true)
  _$$DeleteProductSuccessImplCopyWith<_$DeleteProductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductFailureImplCopyWith<$Res> {
  factory _$$DeleteProductFailureImplCopyWith(_$DeleteProductFailureImpl value,
          $Res Function(_$DeleteProductFailureImpl) then) =
      __$$DeleteProductFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DeleteProductFailureImplCopyWithImpl<$Res>
    extends _$AdminProductStateCopyWithImpl<$Res, _$DeleteProductFailureImpl>
    implements _$$DeleteProductFailureImplCopyWith<$Res> {
  __$$DeleteProductFailureImplCopyWithImpl(_$DeleteProductFailureImpl _value,
      $Res Function(_$DeleteProductFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeleteProductFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductFailureImpl implements DeleteProductFailure {
  const _$DeleteProductFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminProductState.deleteProductFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductFailureImplCopyWith<_$DeleteProductFailureImpl>
      get copyWith =>
          __$$DeleteProductFailureImplCopyWithImpl<_$DeleteProductFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminProductLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getAdminProductListSuccess,
    required TResult Function() getAdminProductListEmpty,
    required TResult Function(String errorMessage) getAdminProductListFailure,
    required TResult Function(ProductsDetailsEntity product)
        getAdminProductDetailsSuccess,
    required TResult Function() getAdminProductDetailsEmpty,
    required TResult Function(String errorMessage)
        getAdminProductDetailsFailure,
    required TResult Function(String body) createNewProductSuccess,
    required TResult Function(String errorMessage) createNewProductFailure,
    required TResult Function(String body) updateProductSuccess,
    required TResult Function(String errorMessage) updateProductFailure,
    required TResult Function(bool isDeleted) deleteProductSuccess,
    required TResult Function(String errorMessage) deleteProductFailure,
  }) {
    return deleteProductFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminProductLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult? Function()? getAdminProductListEmpty,
    TResult? Function(String errorMessage)? getAdminProductListFailure,
    TResult? Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult? Function()? getAdminProductDetailsEmpty,
    TResult? Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult? Function(String body)? createNewProductSuccess,
    TResult? Function(String errorMessage)? createNewProductFailure,
    TResult? Function(String body)? updateProductSuccess,
    TResult? Function(String errorMessage)? updateProductFailure,
    TResult? Function(bool isDeleted)? deleteProductSuccess,
    TResult? Function(String errorMessage)? deleteProductFailure,
  }) {
    return deleteProductFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminProductLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getAdminProductListSuccess,
    TResult Function()? getAdminProductListEmpty,
    TResult Function(String errorMessage)? getAdminProductListFailure,
    TResult Function(ProductsDetailsEntity product)?
        getAdminProductDetailsSuccess,
    TResult Function()? getAdminProductDetailsEmpty,
    TResult Function(String errorMessage)? getAdminProductDetailsFailure,
    TResult Function(String body)? createNewProductSuccess,
    TResult Function(String errorMessage)? createNewProductFailure,
    TResult Function(String body)? updateProductSuccess,
    TResult Function(String errorMessage)? updateProductFailure,
    TResult Function(bool isDeleted)? deleteProductSuccess,
    TResult Function(String errorMessage)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (deleteProductFailure != null) {
      return deleteProductFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminProductLoading value) adminProductLoading,
    required TResult Function(GetAdminProductListSuccess value)
        getAdminProductListSuccess,
    required TResult Function(GetAdminProductListEmpty value)
        getAdminProductListEmpty,
    required TResult Function(GetAdminProductListFailure value)
        getAdminProductListFailure,
    required TResult Function(GetAdminProductDetailsSuccess value)
        getAdminProductDetailsSuccess,
    required TResult Function(GetAdminProductDetailsEmpty value)
        getAdminProductDetailsEmpty,
    required TResult Function(GetAdminProductDetailsFailure value)
        getAdminProductDetailsFailure,
    required TResult Function(CreateNewProductSuccess value)
        createNewProductSuccess,
    required TResult Function(CreateNewProductFailure value)
        createNewProductFailure,
    required TResult Function(UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(UpdateProductFailure value) updateProductFailure,
    required TResult Function(DeleteProductSuccess value) deleteProductSuccess,
    required TResult Function(DeleteProductFailure value) deleteProductFailure,
  }) {
    return deleteProductFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminProductLoading value)? adminProductLoading,
    TResult? Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult? Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult? Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult? Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult? Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult? Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult? Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult? Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult? Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(UpdateProductFailure value)? updateProductFailure,
    TResult? Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult? Function(DeleteProductFailure value)? deleteProductFailure,
  }) {
    return deleteProductFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminProductLoading value)? adminProductLoading,
    TResult Function(GetAdminProductListSuccess value)?
        getAdminProductListSuccess,
    TResult Function(GetAdminProductListEmpty value)? getAdminProductListEmpty,
    TResult Function(GetAdminProductListFailure value)?
        getAdminProductListFailure,
    TResult Function(GetAdminProductDetailsSuccess value)?
        getAdminProductDetailsSuccess,
    TResult Function(GetAdminProductDetailsEmpty value)?
        getAdminProductDetailsEmpty,
    TResult Function(GetAdminProductDetailsFailure value)?
        getAdminProductDetailsFailure,
    TResult Function(CreateNewProductSuccess value)? createNewProductSuccess,
    TResult Function(CreateNewProductFailure value)? createNewProductFailure,
    TResult Function(UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(UpdateProductFailure value)? updateProductFailure,
    TResult Function(DeleteProductSuccess value)? deleteProductSuccess,
    TResult Function(DeleteProductFailure value)? deleteProductFailure,
    required TResult orElse(),
  }) {
    if (deleteProductFailure != null) {
      return deleteProductFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteProductFailure implements AdminProductState {
  const factory DeleteProductFailure(final String errorMessage) =
      _$DeleteProductFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$DeleteProductFailureImplCopyWith<_$DeleteProductFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
