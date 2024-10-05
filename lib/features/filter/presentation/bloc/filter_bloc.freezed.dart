// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterProductsEntity body)
        getFilteredProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FilterProductsEntity body)? getFilteredProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterProductsEntity body)? getFilteredProductsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFilteredProductsListEvent value)
        getFilteredProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

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
    extends _$FilterEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'FilterEvent.started()';
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
    required TResult Function(FilterProductsEntity body)
        getFilteredProductsList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FilterProductsEntity body)? getFilteredProductsList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterProductsEntity body)? getFilteredProductsList,
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
    required TResult Function(GetFilteredProductsListEvent value)
        getFilteredProductsList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FilterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFilteredProductsListEventImplCopyWith<$Res> {
  factory _$$GetFilteredProductsListEventImplCopyWith(
          _$GetFilteredProductsListEventImpl value,
          $Res Function(_$GetFilteredProductsListEventImpl) then) =
      __$$GetFilteredProductsListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilterProductsEntity body});
}

/// @nodoc
class __$$GetFilteredProductsListEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$GetFilteredProductsListEventImpl>
    implements _$$GetFilteredProductsListEventImplCopyWith<$Res> {
  __$$GetFilteredProductsListEventImplCopyWithImpl(
      _$GetFilteredProductsListEventImpl _value,
      $Res Function(_$GetFilteredProductsListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$GetFilteredProductsListEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as FilterProductsEntity,
    ));
  }
}

/// @nodoc

class _$GetFilteredProductsListEventImpl
    implements GetFilteredProductsListEvent {
  const _$GetFilteredProductsListEventImpl({required this.body});

  @override
  final FilterProductsEntity body;

  @override
  String toString() {
    return 'FilterEvent.getFilteredProductsList(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFilteredProductsListEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFilteredProductsListEventImplCopyWith<
          _$GetFilteredProductsListEventImpl>
      get copyWith => __$$GetFilteredProductsListEventImplCopyWithImpl<
          _$GetFilteredProductsListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FilterProductsEntity body)
        getFilteredProductsList,
  }) {
    return getFilteredProductsList(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FilterProductsEntity body)? getFilteredProductsList,
  }) {
    return getFilteredProductsList?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FilterProductsEntity body)? getFilteredProductsList,
    required TResult orElse(),
  }) {
    if (getFilteredProductsList != null) {
      return getFilteredProductsList(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFilteredProductsListEvent value)
        getFilteredProductsList,
  }) {
    return getFilteredProductsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
  }) {
    return getFilteredProductsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFilteredProductsListEvent value)?
        getFilteredProductsList,
    required TResult orElse(),
  }) {
    if (getFilteredProductsList != null) {
      return getFilteredProductsList(this);
    }
    return orElse();
  }
}

abstract class GetFilteredProductsListEvent implements FilterEvent {
  const factory GetFilteredProductsListEvent(
          {required final FilterProductsEntity body}) =
      _$GetFilteredProductsListEventImpl;

  FilterProductsEntity get body;
  @JsonKey(ignore: true)
  _$$GetFilteredProductsListEventImplCopyWith<
          _$GetFilteredProductsListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

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
    extends _$FilterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FilterState.initial()';
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
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
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
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FilteredProductsLoadingImplCopyWith<$Res> {
  factory _$$FilteredProductsLoadingImplCopyWith(
          _$FilteredProductsLoadingImpl value,
          $Res Function(_$FilteredProductsLoadingImpl) then) =
      __$$FilteredProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilteredProductsLoadingImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilteredProductsLoadingImpl>
    implements _$$FilteredProductsLoadingImplCopyWith<$Res> {
  __$$FilteredProductsLoadingImplCopyWithImpl(
      _$FilteredProductsLoadingImpl _value,
      $Res Function(_$FilteredProductsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilteredProductsLoadingImpl implements FilteredProductsLoading {
  const _$FilteredProductsLoadingImpl();

  @override
  String toString() {
    return 'FilterState.filteredProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) {
    return filteredProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) {
    return filteredProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (filteredProductsLoading != null) {
      return filteredProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) {
    return filteredProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) {
    return filteredProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (filteredProductsLoading != null) {
      return filteredProductsLoading(this);
    }
    return orElse();
  }
}

abstract class FilteredProductsLoading implements FilterState {
  const factory FilteredProductsLoading() = _$FilteredProductsLoadingImpl;
}

/// @nodoc
abstract class _$$GetFilteredProductsListSuccessImplCopyWith<$Res> {
  factory _$$GetFilteredProductsListSuccessImplCopyWith(
          _$GetFilteredProductsListSuccessImpl value,
          $Res Function(_$GetFilteredProductsListSuccessImpl) then) =
      __$$GetFilteredProductsListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetProductEntity>? productList});
}

/// @nodoc
class __$$GetFilteredProductsListSuccessImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res,
        _$GetFilteredProductsListSuccessImpl>
    implements _$$GetFilteredProductsListSuccessImplCopyWith<$Res> {
  __$$GetFilteredProductsListSuccessImplCopyWithImpl(
      _$GetFilteredProductsListSuccessImpl _value,
      $Res Function(_$GetFilteredProductsListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_$GetFilteredProductsListSuccessImpl(
      freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GetProductEntity>?,
    ));
  }
}

/// @nodoc

class _$GetFilteredProductsListSuccessImpl
    implements GetFilteredProductsListSuccess {
  const _$GetFilteredProductsListSuccessImpl(
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
    return 'FilterState.getFilteredProductsListSuccess(productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFilteredProductsListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFilteredProductsListSuccessImplCopyWith<
          _$GetFilteredProductsListSuccessImpl>
      get copyWith => __$$GetFilteredProductsListSuccessImplCopyWithImpl<
          _$GetFilteredProductsListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListSuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListSuccess?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListSuccess != null) {
      return getFilteredProductsListSuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListSuccess != null) {
      return getFilteredProductsListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetFilteredProductsListSuccess implements FilterState {
  const factory GetFilteredProductsListSuccess(
          final List<GetProductEntity>? productList) =
      _$GetFilteredProductsListSuccessImpl;

  List<GetProductEntity>? get productList;
  @JsonKey(ignore: true)
  _$$GetFilteredProductsListSuccessImplCopyWith<
          _$GetFilteredProductsListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFilteredProductsListEmptyImplCopyWith<$Res> {
  factory _$$GetFilteredProductsListEmptyImplCopyWith(
          _$GetFilteredProductsListEmptyImpl value,
          $Res Function(_$GetFilteredProductsListEmptyImpl) then) =
      __$$GetFilteredProductsListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFilteredProductsListEmptyImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$GetFilteredProductsListEmptyImpl>
    implements _$$GetFilteredProductsListEmptyImplCopyWith<$Res> {
  __$$GetFilteredProductsListEmptyImplCopyWithImpl(
      _$GetFilteredProductsListEmptyImpl _value,
      $Res Function(_$GetFilteredProductsListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFilteredProductsListEmptyImpl
    implements GetFilteredProductsListEmpty {
  const _$GetFilteredProductsListEmptyImpl();

  @override
  String toString() {
    return 'FilterState.getFilteredProductsListEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFilteredProductsListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListEmpty != null) {
      return getFilteredProductsListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListEmpty != null) {
      return getFilteredProductsListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetFilteredProductsListEmpty implements FilterState {
  const factory GetFilteredProductsListEmpty() =
      _$GetFilteredProductsListEmptyImpl;
}

/// @nodoc
abstract class _$$GetFilteredProductsListFailureImplCopyWith<$Res> {
  factory _$$GetFilteredProductsListFailureImplCopyWith(
          _$GetFilteredProductsListFailureImpl value,
          $Res Function(_$GetFilteredProductsListFailureImpl) then) =
      __$$GetFilteredProductsListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetFilteredProductsListFailureImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res,
        _$GetFilteredProductsListFailureImpl>
    implements _$$GetFilteredProductsListFailureImplCopyWith<$Res> {
  __$$GetFilteredProductsListFailureImplCopyWithImpl(
      _$GetFilteredProductsListFailureImpl _value,
      $Res Function(_$GetFilteredProductsListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetFilteredProductsListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFilteredProductsListFailureImpl
    implements GetFilteredProductsListFailure {
  const _$GetFilteredProductsListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FilterState.getFilteredProductsListFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFilteredProductsListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFilteredProductsListFailureImplCopyWith<
          _$GetFilteredProductsListFailureImpl>
      get copyWith => __$$GetFilteredProductsListFailureImplCopyWithImpl<
          _$GetFilteredProductsListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteredProductsLoading,
    required TResult Function(List<GetProductEntity>? productList)
        getFilteredProductsListSuccess,
    required TResult Function() getFilteredProductsListEmpty,
    required TResult Function(String errorMessage)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteredProductsLoading,
    TResult? Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult? Function()? getFilteredProductsListEmpty,
    TResult? Function(String errorMessage)? getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteredProductsLoading,
    TResult Function(List<GetProductEntity>? productList)?
        getFilteredProductsListSuccess,
    TResult Function()? getFilteredProductsListEmpty,
    TResult Function(String errorMessage)? getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListFailure != null) {
      return getFilteredProductsListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FilteredProductsLoading value)
        filteredProductsLoading,
    required TResult Function(GetFilteredProductsListSuccess value)
        getFilteredProductsListSuccess,
    required TResult Function(GetFilteredProductsListEmpty value)
        getFilteredProductsListEmpty,
    required TResult Function(GetFilteredProductsListFailure value)
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult? Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult? Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult? Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
  }) {
    return getFilteredProductsListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FilteredProductsLoading value)? filteredProductsLoading,
    TResult Function(GetFilteredProductsListSuccess value)?
        getFilteredProductsListSuccess,
    TResult Function(GetFilteredProductsListEmpty value)?
        getFilteredProductsListEmpty,
    TResult Function(GetFilteredProductsListFailure value)?
        getFilteredProductsListFailure,
    required TResult orElse(),
  }) {
    if (getFilteredProductsListFailure != null) {
      return getFilteredProductsListFailure(this);
    }
    return orElse();
  }
}

abstract class GetFilteredProductsListFailure implements FilterState {
  const factory GetFilteredProductsListFailure(final String errorMessage) =
      _$GetFilteredProductsListFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetFilteredProductsListFailureImplCopyWith<
          _$GetFilteredProductsListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
