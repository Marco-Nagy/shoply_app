// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoriesEventCopyWith<$Res> {
  factory $AdminCategoriesEventCopyWith(AdminCategoriesEvent value,
          $Res Function(AdminCategoriesEvent) then) =
      _$AdminCategoriesEventCopyWithImpl<$Res, AdminCategoriesEvent>;
}

/// @nodoc
class _$AdminCategoriesEventCopyWithImpl<$Res,
        $Val extends AdminCategoriesEvent>
    implements $AdminCategoriesEventCopyWith<$Res> {
  _$AdminCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AdminCategoriesEvent.started()';
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
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
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
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminCategoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchAdminCategoriesListEventImplCopyWith<$Res> {
  factory _$$FetchAdminCategoriesListEventImplCopyWith(
          _$FetchAdminCategoriesListEventImpl value,
          $Res Function(_$FetchAdminCategoriesListEventImpl) then) =
      __$$FetchAdminCategoriesListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAdminCategoriesListEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$FetchAdminCategoriesListEventImpl>
    implements _$$FetchAdminCategoriesListEventImplCopyWith<$Res> {
  __$$FetchAdminCategoriesListEventImplCopyWithImpl(
      _$FetchAdminCategoriesListEventImpl _value,
      $Res Function(_$FetchAdminCategoriesListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAdminCategoriesListEventImpl
    implements FetchAdminCategoriesListEvent {
  const _$FetchAdminCategoriesListEventImpl();

  @override
  String toString() {
    return 'AdminCategoriesEvent.fetchAdminCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAdminCategoriesListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return fetchAdminCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return fetchAdminCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (fetchAdminCategories != null) {
      return fetchAdminCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return fetchAdminCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return fetchAdminCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (fetchAdminCategories != null) {
      return fetchAdminCategories(this);
    }
    return orElse();
  }
}

abstract class FetchAdminCategoriesListEvent implements AdminCategoriesEvent {
  const factory FetchAdminCategoriesListEvent() =
      _$FetchAdminCategoriesListEventImpl;
}

/// @nodoc
abstract class _$$CreateNewCategoryEventImplCopyWith<$Res> {
  factory _$$CreateNewCategoryEventImplCopyWith(
          _$CreateNewCategoryEventImpl value,
          $Res Function(_$CreateNewCategoryEventImpl) then) =
      __$$CreateNewCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryRequest body});
}

/// @nodoc
class __$$CreateNewCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$CreateNewCategoryEventImpl>
    implements _$$CreateNewCategoryEventImplCopyWith<$Res> {
  __$$CreateNewCategoryEventImplCopyWithImpl(
      _$CreateNewCategoryEventImpl _value,
      $Res Function(_$CreateNewCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$CreateNewCategoryEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as CreateCategoryRequest,
    ));
  }
}

/// @nodoc

class _$CreateNewCategoryEventImpl implements CreateNewCategoryEvent {
  const _$CreateNewCategoryEventImpl({required this.body});

  @override
  final CreateCategoryRequest body;

  @override
  String toString() {
    return 'AdminCategoriesEvent.createNewCategoryEvent(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewCategoryEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewCategoryEventImplCopyWith<_$CreateNewCategoryEventImpl>
      get copyWith => __$$CreateNewCategoryEventImplCopyWithImpl<
          _$CreateNewCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return createNewCategoryEvent(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return createNewCategoryEvent?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (createNewCategoryEvent != null) {
      return createNewCategoryEvent(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return createNewCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return createNewCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (createNewCategoryEvent != null) {
      return createNewCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class CreateNewCategoryEvent implements AdminCategoriesEvent {
  const factory CreateNewCategoryEvent(
          {required final CreateCategoryRequest body}) =
      _$CreateNewCategoryEventImpl;

  CreateCategoryRequest get body;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewCategoryEventImplCopyWith<_$CreateNewCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryEventImplCopyWith<$Res> {
  factory _$$UpdateCategoryEventImplCopyWith(_$UpdateCategoryEventImpl value,
          $Res Function(_$UpdateCategoryEventImpl) then) =
      __$$UpdateCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateCategoryRequest body});
}

/// @nodoc
class __$$UpdateCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res, _$UpdateCategoryEventImpl>
    implements _$$UpdateCategoryEventImplCopyWith<$Res> {
  __$$UpdateCategoryEventImplCopyWithImpl(_$UpdateCategoryEventImpl _value,
      $Res Function(_$UpdateCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$UpdateCategoryEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateCategoryRequest,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryEventImpl implements UpdateCategoryEvent {
  const _$UpdateCategoryEventImpl({required this.body});

  @override
  final UpdateCategoryRequest body;

  @override
  String toString() {
    return 'AdminCategoriesEvent.updateCategoryEvent(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryEventImplCopyWith<_$UpdateCategoryEventImpl> get copyWith =>
      __$$UpdateCategoryEventImplCopyWithImpl<_$UpdateCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return updateCategoryEvent(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return updateCategoryEvent?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (updateCategoryEvent != null) {
      return updateCategoryEvent(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return updateCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return updateCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (updateCategoryEvent != null) {
      return updateCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateCategoryEvent implements AdminCategoriesEvent {
  const factory UpdateCategoryEvent(
      {required final UpdateCategoryRequest body}) = _$UpdateCategoryEventImpl;

  UpdateCategoryRequest get body;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCategoryEventImplCopyWith<_$UpdateCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryEventImplCopyWith<$Res> {
  factory _$$DeleteCategoryEventImplCopyWith(_$DeleteCategoryEventImpl value,
          $Res Function(_$DeleteCategoryEventImpl) then) =
      __$$DeleteCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$DeleteCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res, _$DeleteCategoryEventImpl>
    implements _$$DeleteCategoryEventImplCopyWith<$Res> {
  __$$DeleteCategoryEventImplCopyWithImpl(_$DeleteCategoryEventImpl _value,
      $Res Function(_$DeleteCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteCategoryEventImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryEventImpl implements DeleteCategoryEvent {
  const _$DeleteCategoryEventImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'AdminCategoriesEvent.deleteCategoryEvent(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      __$$DeleteCategoryEventImplCopyWithImpl<_$DeleteCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return deleteCategoryEvent(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return deleteCategoryEvent?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (deleteCategoryEvent != null) {
      return deleteCategoryEvent(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return deleteCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return deleteCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (deleteCategoryEvent != null) {
      return deleteCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteCategoryEvent implements AdminCategoriesEvent {
  const factory DeleteCategoryEvent({required final String categoryId}) =
      _$DeleteCategoryEventImpl;

  String get categoryId;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFirebaseCategoriesEventImplCopyWith<$Res> {
  factory _$$FetchFirebaseCategoriesEventImplCopyWith(
          _$FetchFirebaseCategoriesEventImpl value,
          $Res Function(_$FetchFirebaseCategoriesEventImpl) then) =
      __$$FetchFirebaseCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFirebaseCategoriesEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$FetchFirebaseCategoriesEventImpl>
    implements _$$FetchFirebaseCategoriesEventImplCopyWith<$Res> {
  __$$FetchFirebaseCategoriesEventImplCopyWithImpl(
      _$FetchFirebaseCategoriesEventImpl _value,
      $Res Function(_$FetchFirebaseCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFirebaseCategoriesEventImpl
    implements FetchFirebaseCategoriesEvent {
  const _$FetchFirebaseCategoriesEventImpl();

  @override
  String toString() {
    return 'AdminCategoriesEvent.fetchFirebaseCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFirebaseCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return fetchFirebaseCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return fetchFirebaseCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (fetchFirebaseCategories != null) {
      return fetchFirebaseCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return fetchFirebaseCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return fetchFirebaseCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (fetchFirebaseCategories != null) {
      return fetchFirebaseCategories(this);
    }
    return orElse();
  }
}

abstract class FetchFirebaseCategoriesEvent implements AdminCategoriesEvent {
  const factory FetchFirebaseCategoriesEvent() =
      _$FetchFirebaseCategoriesEventImpl;
}

/// @nodoc
abstract class _$$CreateFirebaseCategoryEventImplCopyWith<$Res> {
  factory _$$CreateFirebaseCategoryEventImplCopyWith(
          _$CreateFirebaseCategoryEventImpl value,
          $Res Function(_$CreateFirebaseCategoryEventImpl) then) =
      __$$CreateFirebaseCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultilingualCategoryEntity category});
}

/// @nodoc
class __$$CreateFirebaseCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$CreateFirebaseCategoryEventImpl>
    implements _$$CreateFirebaseCategoryEventImplCopyWith<$Res> {
  __$$CreateFirebaseCategoryEventImplCopyWithImpl(
      _$CreateFirebaseCategoryEventImpl _value,
      $Res Function(_$CreateFirebaseCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CreateFirebaseCategoryEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MultilingualCategoryEntity,
    ));
  }
}

/// @nodoc

class _$CreateFirebaseCategoryEventImpl implements CreateFirebaseCategoryEvent {
  const _$CreateFirebaseCategoryEventImpl({required this.category});

  @override
  final MultilingualCategoryEntity category;

  @override
  String toString() {
    return 'AdminCategoriesEvent.createFirebaseCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFirebaseCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFirebaseCategoryEventImplCopyWith<_$CreateFirebaseCategoryEventImpl>
      get copyWith => __$$CreateFirebaseCategoryEventImplCopyWithImpl<
          _$CreateFirebaseCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return createFirebaseCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return createFirebaseCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (createFirebaseCategory != null) {
      return createFirebaseCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return createFirebaseCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return createFirebaseCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (createFirebaseCategory != null) {
      return createFirebaseCategory(this);
    }
    return orElse();
  }
}

abstract class CreateFirebaseCategoryEvent implements AdminCategoriesEvent {
  const factory CreateFirebaseCategoryEvent(
          {required final MultilingualCategoryEntity category}) =
      _$CreateFirebaseCategoryEventImpl;

  MultilingualCategoryEntity get category;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFirebaseCategoryEventImplCopyWith<_$CreateFirebaseCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFirebaseCategoryEventImplCopyWith<$Res> {
  factory _$$UpdateFirebaseCategoryEventImplCopyWith(
          _$UpdateFirebaseCategoryEventImpl value,
          $Res Function(_$UpdateFirebaseCategoryEventImpl) then) =
      __$$UpdateFirebaseCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultilingualCategoryEntity category});
}

/// @nodoc
class __$$UpdateFirebaseCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$UpdateFirebaseCategoryEventImpl>
    implements _$$UpdateFirebaseCategoryEventImplCopyWith<$Res> {
  __$$UpdateFirebaseCategoryEventImplCopyWithImpl(
      _$UpdateFirebaseCategoryEventImpl _value,
      $Res Function(_$UpdateFirebaseCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$UpdateFirebaseCategoryEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MultilingualCategoryEntity,
    ));
  }
}

/// @nodoc

class _$UpdateFirebaseCategoryEventImpl implements UpdateFirebaseCategoryEvent {
  const _$UpdateFirebaseCategoryEventImpl({required this.category});

  @override
  final MultilingualCategoryEntity category;

  @override
  String toString() {
    return 'AdminCategoriesEvent.updateFirebaseCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFirebaseCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFirebaseCategoryEventImplCopyWith<_$UpdateFirebaseCategoryEventImpl>
      get copyWith => __$$UpdateFirebaseCategoryEventImplCopyWithImpl<
          _$UpdateFirebaseCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return updateFirebaseCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return updateFirebaseCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategory != null) {
      return updateFirebaseCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return updateFirebaseCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return updateFirebaseCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategory != null) {
      return updateFirebaseCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateFirebaseCategoryEvent implements AdminCategoriesEvent {
  const factory UpdateFirebaseCategoryEvent(
          {required final MultilingualCategoryEntity category}) =
      _$UpdateFirebaseCategoryEventImpl;

  MultilingualCategoryEntity get category;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFirebaseCategoryEventImplCopyWith<_$UpdateFirebaseCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFirebaseCategoryEventImplCopyWith<$Res> {
  factory _$$DeleteFirebaseCategoryEventImplCopyWith(
          _$DeleteFirebaseCategoryEventImpl value,
          $Res Function(_$DeleteFirebaseCategoryEventImpl) then) =
      __$$DeleteFirebaseCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$DeleteFirebaseCategoryEventImplCopyWithImpl<$Res>
    extends _$AdminCategoriesEventCopyWithImpl<$Res,
        _$DeleteFirebaseCategoryEventImpl>
    implements _$$DeleteFirebaseCategoryEventImplCopyWith<$Res> {
  __$$DeleteFirebaseCategoryEventImplCopyWithImpl(
      _$DeleteFirebaseCategoryEventImpl _value,
      $Res Function(_$DeleteFirebaseCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteFirebaseCategoryEventImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFirebaseCategoryEventImpl implements DeleteFirebaseCategoryEvent {
  const _$DeleteFirebaseCategoryEventImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'AdminCategoriesEvent.deleteFirebaseCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFirebaseCategoryEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFirebaseCategoryEventImplCopyWith<_$DeleteFirebaseCategoryEventImpl>
      get copyWith => __$$DeleteFirebaseCategoryEventImplCopyWithImpl<
          _$DeleteFirebaseCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminCategories,
    required TResult Function(CreateCategoryRequest body)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryRequest body) updateCategoryEvent,
    required TResult Function(String categoryId) deleteCategoryEvent,
    required TResult Function() fetchFirebaseCategories,
    required TResult Function(MultilingualCategoryEntity category)
        createFirebaseCategory,
    required TResult Function(MultilingualCategoryEntity category)
        updateFirebaseCategory,
    required TResult Function(String categoryId) deleteFirebaseCategory,
  }) {
    return deleteFirebaseCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
    TResult? Function()? fetchFirebaseCategories,
    TResult? Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult? Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult? Function(String categoryId)? deleteFirebaseCategory,
  }) {
    return deleteFirebaseCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
    TResult Function()? fetchFirebaseCategories,
    TResult Function(MultilingualCategoryEntity category)?
        createFirebaseCategory,
    TResult Function(MultilingualCategoryEntity category)?
        updateFirebaseCategory,
    TResult Function(String categoryId)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategory != null) {
      return deleteFirebaseCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminCategoriesListEvent value)
        fetchAdminCategories,
    required TResult Function(CreateNewCategoryEvent value)
        createNewCategoryEvent,
    required TResult Function(UpdateCategoryEvent value) updateCategoryEvent,
    required TResult Function(DeleteCategoryEvent value) deleteCategoryEvent,
    required TResult Function(FetchFirebaseCategoriesEvent value)
        fetchFirebaseCategories,
    required TResult Function(CreateFirebaseCategoryEvent value)
        createFirebaseCategory,
    required TResult Function(UpdateFirebaseCategoryEvent value)
        updateFirebaseCategory,
    required TResult Function(DeleteFirebaseCategoryEvent value)
        deleteFirebaseCategory,
  }) {
    return deleteFirebaseCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminCategoriesListEvent value)?
        fetchAdminCategories,
    TResult? Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult? Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult? Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult? Function(CreateFirebaseCategoryEvent value)?
        createFirebaseCategory,
    TResult? Function(UpdateFirebaseCategoryEvent value)?
        updateFirebaseCategory,
    TResult? Function(DeleteFirebaseCategoryEvent value)?
        deleteFirebaseCategory,
  }) {
    return deleteFirebaseCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
    TResult Function(FetchFirebaseCategoriesEvent value)?
        fetchFirebaseCategories,
    TResult Function(CreateFirebaseCategoryEvent value)? createFirebaseCategory,
    TResult Function(UpdateFirebaseCategoryEvent value)? updateFirebaseCategory,
    TResult Function(DeleteFirebaseCategoryEvent value)? deleteFirebaseCategory,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategory != null) {
      return deleteFirebaseCategory(this);
    }
    return orElse();
  }
}

abstract class DeleteFirebaseCategoryEvent implements AdminCategoriesEvent {
  const factory DeleteFirebaseCategoryEvent(
      {required final String categoryId}) = _$DeleteFirebaseCategoryEventImpl;

  String get categoryId;

  /// Create a copy of AdminCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFirebaseCategoryEventImplCopyWith<_$DeleteFirebaseCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoriesStateCopyWith<$Res> {
  factory $AdminCategoriesStateCopyWith(AdminCategoriesState value,
          $Res Function(AdminCategoriesState) then) =
      _$AdminCategoriesStateCopyWithImpl<$Res, AdminCategoriesState>;
}

/// @nodoc
class _$AdminCategoriesStateCopyWithImpl<$Res,
        $Val extends AdminCategoriesState>
    implements $AdminCategoriesStateCopyWith<$Res> {
  _$AdminCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.initial()';
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
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
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
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdminCategoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AdminCategoriesLoadingImplCopyWith<$Res> {
  factory _$$AdminCategoriesLoadingImplCopyWith(
          _$AdminCategoriesLoadingImpl value,
          $Res Function(_$AdminCategoriesLoadingImpl) then) =
      __$$AdminCategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminCategoriesLoadingImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$AdminCategoriesLoadingImpl>
    implements _$$AdminCategoriesLoadingImplCopyWith<$Res> {
  __$$AdminCategoriesLoadingImplCopyWithImpl(
      _$AdminCategoriesLoadingImpl _value,
      $Res Function(_$AdminCategoriesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminCategoriesLoadingImpl implements AdminCategoriesLoading {
  const _$AdminCategoriesLoadingImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.adminCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return adminCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return adminCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (adminCategoriesLoading != null) {
      return adminCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return adminCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return adminCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (adminCategoriesLoading != null) {
      return adminCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class AdminCategoriesLoading implements AdminCategoriesState {
  const factory AdminCategoriesLoading() = _$AdminCategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$GetAdminCategoriesListSuccessImplCopyWith<$Res> {
  factory _$$GetAdminCategoriesListSuccessImplCopyWith(
          _$GetAdminCategoriesListSuccessImpl value,
          $Res Function(_$GetAdminCategoriesListSuccessImpl) then) =
      __$$GetAdminCategoriesListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Categories?> categoriesList});
}

/// @nodoc
class __$$GetAdminCategoriesListSuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetAdminCategoriesListSuccessImpl>
    implements _$$GetAdminCategoriesListSuccessImplCopyWith<$Res> {
  __$$GetAdminCategoriesListSuccessImplCopyWithImpl(
      _$GetAdminCategoriesListSuccessImpl _value,
      $Res Function(_$GetAdminCategoriesListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
  }) {
    return _then(_$GetAdminCategoriesListSuccessImpl(
      null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<Categories?>,
    ));
  }
}

/// @nodoc

class _$GetAdminCategoriesListSuccessImpl
    implements GetAdminCategoriesListSuccess {
  const _$GetAdminCategoriesListSuccessImpl(
      final List<Categories?> categoriesList)
      : _categoriesList = categoriesList;

  final List<Categories?> _categoriesList;
  @override
  List<Categories?> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  String toString() {
    return 'AdminCategoriesState.getAdminCategoriesListSuccess(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminCategoriesListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesList));

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminCategoriesListSuccessImplCopyWith<
          _$GetAdminCategoriesListSuccessImpl>
      get copyWith => __$$GetAdminCategoriesListSuccessImplCopyWithImpl<
          _$GetAdminCategoriesListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListSuccess(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListSuccess?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListSuccess != null) {
      return getAdminCategoriesListSuccess(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListSuccess != null) {
      return getAdminCategoriesListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAdminCategoriesListSuccess implements AdminCategoriesState {
  const factory GetAdminCategoriesListSuccess(
          final List<Categories?> categoriesList) =
      _$GetAdminCategoriesListSuccessImpl;

  List<Categories?> get categoriesList;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminCategoriesListSuccessImplCopyWith<
          _$GetAdminCategoriesListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAdminCategoriesListEmptyImplCopyWith<$Res> {
  factory _$$GetAdminCategoriesListEmptyImplCopyWith(
          _$GetAdminCategoriesListEmptyImpl value,
          $Res Function(_$GetAdminCategoriesListEmptyImpl) then) =
      __$$GetAdminCategoriesListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdminCategoriesListEmptyImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetAdminCategoriesListEmptyImpl>
    implements _$$GetAdminCategoriesListEmptyImplCopyWith<$Res> {
  __$$GetAdminCategoriesListEmptyImplCopyWithImpl(
      _$GetAdminCategoriesListEmptyImpl _value,
      $Res Function(_$GetAdminCategoriesListEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAdminCategoriesListEmptyImpl implements GetAdminCategoriesListEmpty {
  const _$GetAdminCategoriesListEmptyImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.getAdminCategoriesListEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminCategoriesListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListEmpty != null) {
      return getAdminCategoriesListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListEmpty != null) {
      return getAdminCategoriesListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetAdminCategoriesListEmpty implements AdminCategoriesState {
  const factory GetAdminCategoriesListEmpty() =
      _$GetAdminCategoriesListEmptyImpl;
}

/// @nodoc
abstract class _$$GetAdminCategoriesListFailureImplCopyWith<$Res> {
  factory _$$GetAdminCategoriesListFailureImplCopyWith(
          _$GetAdminCategoriesListFailureImpl value,
          $Res Function(_$GetAdminCategoriesListFailureImpl) then) =
      __$$GetAdminCategoriesListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetAdminCategoriesListFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetAdminCategoriesListFailureImpl>
    implements _$$GetAdminCategoriesListFailureImplCopyWith<$Res> {
  __$$GetAdminCategoriesListFailureImplCopyWithImpl(
      _$GetAdminCategoriesListFailureImpl _value,
      $Res Function(_$GetAdminCategoriesListFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetAdminCategoriesListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAdminCategoriesListFailureImpl
    implements GetAdminCategoriesListFailure {
  const _$GetAdminCategoriesListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.getAdminCategoriesListFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminCategoriesListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminCategoriesListFailureImplCopyWith<
          _$GetAdminCategoriesListFailureImpl>
      get copyWith => __$$GetAdminCategoriesListFailureImplCopyWithImpl<
          _$GetAdminCategoriesListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListFailure != null) {
      return getAdminCategoriesListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getAdminCategoriesListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getAdminCategoriesListFailure != null) {
      return getAdminCategoriesListFailure(this);
    }
    return orElse();
  }
}

abstract class GetAdminCategoriesListFailure implements AdminCategoriesState {
  const factory GetAdminCategoriesListFailure(final String errorMessage) =
      _$GetAdminCategoriesListFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminCategoriesListFailureImplCopyWith<
          _$GetAdminCategoriesListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewCategorySuccessImplCopyWith<$Res> {
  factory _$$AddNewCategorySuccessImplCopyWith(
          _$AddNewCategorySuccessImpl value,
          $Res Function(_$AddNewCategorySuccessImpl) then) =
      __$$AddNewCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddNewCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$AddNewCategorySuccessImpl>
    implements _$$AddNewCategorySuccessImplCopyWith<$Res> {
  __$$AddNewCategorySuccessImplCopyWithImpl(_$AddNewCategorySuccessImpl _value,
      $Res Function(_$AddNewCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddNewCategorySuccessImpl implements AddNewCategorySuccess {
  const _$AddNewCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.addNewCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return addNewCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addNewCategorySuccess != null) {
      return addNewCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addNewCategorySuccess != null) {
      return addNewCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class AddNewCategorySuccess implements AdminCategoriesState {
  const factory AddNewCategorySuccess() = _$AddNewCategorySuccessImpl;
}

/// @nodoc
abstract class _$$AddNewCategoryFailureImplCopyWith<$Res> {
  factory _$$AddNewCategoryFailureImplCopyWith(
          _$AddNewCategoryFailureImpl value,
          $Res Function(_$AddNewCategoryFailureImpl) then) =
      __$$AddNewCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AddNewCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$AddNewCategoryFailureImpl>
    implements _$$AddNewCategoryFailureImplCopyWith<$Res> {
  __$$AddNewCategoryFailureImplCopyWithImpl(_$AddNewCategoryFailureImpl _value,
      $Res Function(_$AddNewCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AddNewCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewCategoryFailureImpl implements AddNewCategoryFailure {
  const _$AddNewCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.addNewCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewCategoryFailureImplCopyWith<_$AddNewCategoryFailureImpl>
      get copyWith => __$$AddNewCategoryFailureImplCopyWithImpl<
          _$AddNewCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return addNewCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addNewCategoryFailure != null) {
      return addNewCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return addNewCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addNewCategoryFailure != null) {
      return addNewCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class AddNewCategoryFailure implements AdminCategoriesState {
  const factory AddNewCategoryFailure(final String errorMessage) =
      _$AddNewCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewCategoryFailureImplCopyWith<_$AddNewCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategorySuccessImplCopyWith<$Res> {
  factory _$$UpdateCategorySuccessImplCopyWith(
          _$UpdateCategorySuccessImpl value,
          $Res Function(_$UpdateCategorySuccessImpl) then) =
      __$$UpdateCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$UpdateCategorySuccessImpl>
    implements _$$UpdateCategorySuccessImplCopyWith<$Res> {
  __$$UpdateCategorySuccessImplCopyWithImpl(_$UpdateCategorySuccessImpl _value,
      $Res Function(_$UpdateCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateCategorySuccessImpl implements UpdateCategorySuccess {
  const _$UpdateCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.updateCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return updateCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateCategorySuccess != null) {
      return updateCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateCategorySuccess != null) {
      return updateCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateCategorySuccess implements AdminCategoriesState {
  const factory UpdateCategorySuccess() = _$UpdateCategorySuccessImpl;
}

/// @nodoc
abstract class _$$UpdateCategoryFailureImplCopyWith<$Res> {
  factory _$$UpdateCategoryFailureImplCopyWith(
          _$UpdateCategoryFailureImpl value,
          $Res Function(_$UpdateCategoryFailureImpl) then) =
      __$$UpdateCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UpdateCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$UpdateCategoryFailureImpl>
    implements _$$UpdateCategoryFailureImplCopyWith<$Res> {
  __$$UpdateCategoryFailureImplCopyWithImpl(_$UpdateCategoryFailureImpl _value,
      $Res Function(_$UpdateCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UpdateCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryFailureImpl implements UpdateCategoryFailure {
  const _$UpdateCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.updateCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryFailureImplCopyWith<_$UpdateCategoryFailureImpl>
      get copyWith => __$$UpdateCategoryFailureImplCopyWithImpl<
          _$UpdateCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return updateCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateCategoryFailure != null) {
      return updateCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return updateCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateCategoryFailure != null) {
      return updateCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateCategoryFailure implements AdminCategoriesState {
  const factory UpdateCategoryFailure(final String errorMessage) =
      _$UpdateCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCategoryFailureImplCopyWith<_$UpdateCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategorySuccessImplCopyWith<$Res> {
  factory _$$DeleteCategorySuccessImplCopyWith(
          _$DeleteCategorySuccessImpl value,
          $Res Function(_$DeleteCategorySuccessImpl) then) =
      __$$DeleteCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$DeleteCategorySuccessImpl>
    implements _$$DeleteCategorySuccessImplCopyWith<$Res> {
  __$$DeleteCategorySuccessImplCopyWithImpl(_$DeleteCategorySuccessImpl _value,
      $Res Function(_$DeleteCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteCategorySuccessImpl implements DeleteCategorySuccess {
  const _$DeleteCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.deleteCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return deleteCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteCategorySuccess != null) {
      return deleteCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteCategorySuccess != null) {
      return deleteCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteCategorySuccess implements AdminCategoriesState {
  const factory DeleteCategorySuccess() = _$DeleteCategorySuccessImpl;
}

/// @nodoc
abstract class _$$DeleteCategoryFailureImplCopyWith<$Res> {
  factory _$$DeleteCategoryFailureImplCopyWith(
          _$DeleteCategoryFailureImpl value,
          $Res Function(_$DeleteCategoryFailureImpl) then) =
      __$$DeleteCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DeleteCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$DeleteCategoryFailureImpl>
    implements _$$DeleteCategoryFailureImplCopyWith<$Res> {
  __$$DeleteCategoryFailureImplCopyWithImpl(_$DeleteCategoryFailureImpl _value,
      $Res Function(_$DeleteCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeleteCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryFailureImpl implements DeleteCategoryFailure {
  const _$DeleteCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.deleteCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryFailureImplCopyWith<_$DeleteCategoryFailureImpl>
      get copyWith => __$$DeleteCategoryFailureImplCopyWithImpl<
          _$DeleteCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return deleteCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteCategoryFailure != null) {
      return deleteCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return deleteCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteCategoryFailure != null) {
      return deleteCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteCategoryFailure implements AdminCategoriesState {
  const factory DeleteCategoryFailure(final String errorMessage) =
      _$DeleteCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCategoryFailureImplCopyWith<_$DeleteCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFirebaseCategoriesSuccessImplCopyWith<$Res> {
  factory _$$GetFirebaseCategoriesSuccessImplCopyWith(
          _$GetFirebaseCategoriesSuccessImpl value,
          $Res Function(_$GetFirebaseCategoriesSuccessImpl) then) =
      __$$GetFirebaseCategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MultilingualCategoryEntity> categoriesList});
}

/// @nodoc
class __$$GetFirebaseCategoriesSuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetFirebaseCategoriesSuccessImpl>
    implements _$$GetFirebaseCategoriesSuccessImplCopyWith<$Res> {
  __$$GetFirebaseCategoriesSuccessImplCopyWithImpl(
      _$GetFirebaseCategoriesSuccessImpl _value,
      $Res Function(_$GetFirebaseCategoriesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
  }) {
    return _then(_$GetFirebaseCategoriesSuccessImpl(
      null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<MultilingualCategoryEntity>,
    ));
  }
}

/// @nodoc

class _$GetFirebaseCategoriesSuccessImpl
    implements GetFirebaseCategoriesSuccess {
  const _$GetFirebaseCategoriesSuccessImpl(
      final List<MultilingualCategoryEntity> categoriesList)
      : _categoriesList = categoriesList;

  final List<MultilingualCategoryEntity> _categoriesList;
  @override
  List<MultilingualCategoryEntity> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  String toString() {
    return 'AdminCategoriesState.getFirebaseCategoriesSuccess(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFirebaseCategoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesList));

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFirebaseCategoriesSuccessImplCopyWith<
          _$GetFirebaseCategoriesSuccessImpl>
      get copyWith => __$$GetFirebaseCategoriesSuccessImplCopyWithImpl<
          _$GetFirebaseCategoriesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesSuccess(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesSuccess?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesSuccess != null) {
      return getFirebaseCategoriesSuccess(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesSuccess != null) {
      return getFirebaseCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetFirebaseCategoriesSuccess implements AdminCategoriesState {
  const factory GetFirebaseCategoriesSuccess(
          final List<MultilingualCategoryEntity> categoriesList) =
      _$GetFirebaseCategoriesSuccessImpl;

  List<MultilingualCategoryEntity> get categoriesList;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFirebaseCategoriesSuccessImplCopyWith<
          _$GetFirebaseCategoriesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFirebaseCategoriesEmptyImplCopyWith<$Res> {
  factory _$$GetFirebaseCategoriesEmptyImplCopyWith(
          _$GetFirebaseCategoriesEmptyImpl value,
          $Res Function(_$GetFirebaseCategoriesEmptyImpl) then) =
      __$$GetFirebaseCategoriesEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFirebaseCategoriesEmptyImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetFirebaseCategoriesEmptyImpl>
    implements _$$GetFirebaseCategoriesEmptyImplCopyWith<$Res> {
  __$$GetFirebaseCategoriesEmptyImplCopyWithImpl(
      _$GetFirebaseCategoriesEmptyImpl _value,
      $Res Function(_$GetFirebaseCategoriesEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFirebaseCategoriesEmptyImpl implements GetFirebaseCategoriesEmpty {
  const _$GetFirebaseCategoriesEmptyImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.getFirebaseCategoriesEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFirebaseCategoriesEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesEmpty != null) {
      return getFirebaseCategoriesEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesEmpty != null) {
      return getFirebaseCategoriesEmpty(this);
    }
    return orElse();
  }
}

abstract class GetFirebaseCategoriesEmpty implements AdminCategoriesState {
  const factory GetFirebaseCategoriesEmpty() = _$GetFirebaseCategoriesEmptyImpl;
}

/// @nodoc
abstract class _$$GetFirebaseCategoriesFailureImplCopyWith<$Res> {
  factory _$$GetFirebaseCategoriesFailureImplCopyWith(
          _$GetFirebaseCategoriesFailureImpl value,
          $Res Function(_$GetFirebaseCategoriesFailureImpl) then) =
      __$$GetFirebaseCategoriesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetFirebaseCategoriesFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$GetFirebaseCategoriesFailureImpl>
    implements _$$GetFirebaseCategoriesFailureImplCopyWith<$Res> {
  __$$GetFirebaseCategoriesFailureImplCopyWithImpl(
      _$GetFirebaseCategoriesFailureImpl _value,
      $Res Function(_$GetFirebaseCategoriesFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetFirebaseCategoriesFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFirebaseCategoriesFailureImpl
    implements GetFirebaseCategoriesFailure {
  const _$GetFirebaseCategoriesFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.getFirebaseCategoriesFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFirebaseCategoriesFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFirebaseCategoriesFailureImplCopyWith<
          _$GetFirebaseCategoriesFailureImpl>
      get copyWith => __$$GetFirebaseCategoriesFailureImplCopyWithImpl<
          _$GetFirebaseCategoriesFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesFailure != null) {
      return getFirebaseCategoriesFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return getFirebaseCategoriesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (getFirebaseCategoriesFailure != null) {
      return getFirebaseCategoriesFailure(this);
    }
    return orElse();
  }
}

abstract class GetFirebaseCategoriesFailure implements AdminCategoriesState {
  const factory GetFirebaseCategoriesFailure(final String errorMessage) =
      _$GetFirebaseCategoriesFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFirebaseCategoriesFailureImplCopyWith<
          _$GetFirebaseCategoriesFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFirebaseCategorySuccessImplCopyWith<$Res> {
  factory _$$AddFirebaseCategorySuccessImplCopyWith(
          _$AddFirebaseCategorySuccessImpl value,
          $Res Function(_$AddFirebaseCategorySuccessImpl) then) =
      __$$AddFirebaseCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddFirebaseCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$AddFirebaseCategorySuccessImpl>
    implements _$$AddFirebaseCategorySuccessImplCopyWith<$Res> {
  __$$AddFirebaseCategorySuccessImplCopyWithImpl(
      _$AddFirebaseCategorySuccessImpl _value,
      $Res Function(_$AddFirebaseCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddFirebaseCategorySuccessImpl implements AddFirebaseCategorySuccess {
  const _$AddFirebaseCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.addFirebaseCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFirebaseCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addFirebaseCategorySuccess != null) {
      return addFirebaseCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addFirebaseCategorySuccess != null) {
      return addFirebaseCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class AddFirebaseCategorySuccess implements AdminCategoriesState {
  const factory AddFirebaseCategorySuccess() = _$AddFirebaseCategorySuccessImpl;
}

/// @nodoc
abstract class _$$AddFirebaseCategoryFailureImplCopyWith<$Res> {
  factory _$$AddFirebaseCategoryFailureImplCopyWith(
          _$AddFirebaseCategoryFailureImpl value,
          $Res Function(_$AddFirebaseCategoryFailureImpl) then) =
      __$$AddFirebaseCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AddFirebaseCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$AddFirebaseCategoryFailureImpl>
    implements _$$AddFirebaseCategoryFailureImplCopyWith<$Res> {
  __$$AddFirebaseCategoryFailureImplCopyWithImpl(
      _$AddFirebaseCategoryFailureImpl _value,
      $Res Function(_$AddFirebaseCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AddFirebaseCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFirebaseCategoryFailureImpl implements AddFirebaseCategoryFailure {
  const _$AddFirebaseCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.addFirebaseCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFirebaseCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFirebaseCategoryFailureImplCopyWith<_$AddFirebaseCategoryFailureImpl>
      get copyWith => __$$AddFirebaseCategoryFailureImplCopyWithImpl<
          _$AddFirebaseCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addFirebaseCategoryFailure != null) {
      return addFirebaseCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return addFirebaseCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (addFirebaseCategoryFailure != null) {
      return addFirebaseCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class AddFirebaseCategoryFailure implements AdminCategoriesState {
  const factory AddFirebaseCategoryFailure(final String errorMessage) =
      _$AddFirebaseCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFirebaseCategoryFailureImplCopyWith<_$AddFirebaseCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFirebaseCategorySuccessImplCopyWith<$Res> {
  factory _$$UpdateFirebaseCategorySuccessImplCopyWith(
          _$UpdateFirebaseCategorySuccessImpl value,
          $Res Function(_$UpdateFirebaseCategorySuccessImpl) then) =
      __$$UpdateFirebaseCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFirebaseCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$UpdateFirebaseCategorySuccessImpl>
    implements _$$UpdateFirebaseCategorySuccessImplCopyWith<$Res> {
  __$$UpdateFirebaseCategorySuccessImplCopyWithImpl(
      _$UpdateFirebaseCategorySuccessImpl _value,
      $Res Function(_$UpdateFirebaseCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateFirebaseCategorySuccessImpl
    implements UpdateFirebaseCategorySuccess {
  const _$UpdateFirebaseCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.updateFirebaseCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFirebaseCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategorySuccess != null) {
      return updateFirebaseCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategorySuccess != null) {
      return updateFirebaseCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateFirebaseCategorySuccess implements AdminCategoriesState {
  const factory UpdateFirebaseCategorySuccess() =
      _$UpdateFirebaseCategorySuccessImpl;
}

/// @nodoc
abstract class _$$UpdateFirebaseCategoryFailureImplCopyWith<$Res> {
  factory _$$UpdateFirebaseCategoryFailureImplCopyWith(
          _$UpdateFirebaseCategoryFailureImpl value,
          $Res Function(_$UpdateFirebaseCategoryFailureImpl) then) =
      __$$UpdateFirebaseCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UpdateFirebaseCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$UpdateFirebaseCategoryFailureImpl>
    implements _$$UpdateFirebaseCategoryFailureImplCopyWith<$Res> {
  __$$UpdateFirebaseCategoryFailureImplCopyWithImpl(
      _$UpdateFirebaseCategoryFailureImpl _value,
      $Res Function(_$UpdateFirebaseCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UpdateFirebaseCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateFirebaseCategoryFailureImpl
    implements UpdateFirebaseCategoryFailure {
  const _$UpdateFirebaseCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.updateFirebaseCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFirebaseCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFirebaseCategoryFailureImplCopyWith<
          _$UpdateFirebaseCategoryFailureImpl>
      get copyWith => __$$UpdateFirebaseCategoryFailureImplCopyWithImpl<
          _$UpdateFirebaseCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategoryFailure != null) {
      return updateFirebaseCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return updateFirebaseCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (updateFirebaseCategoryFailure != null) {
      return updateFirebaseCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateFirebaseCategoryFailure implements AdminCategoriesState {
  const factory UpdateFirebaseCategoryFailure(final String errorMessage) =
      _$UpdateFirebaseCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFirebaseCategoryFailureImplCopyWith<
          _$UpdateFirebaseCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFirebaseCategorySuccessImplCopyWith<$Res> {
  factory _$$DeleteFirebaseCategorySuccessImplCopyWith(
          _$DeleteFirebaseCategorySuccessImpl value,
          $Res Function(_$DeleteFirebaseCategorySuccessImpl) then) =
      __$$DeleteFirebaseCategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteFirebaseCategorySuccessImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$DeleteFirebaseCategorySuccessImpl>
    implements _$$DeleteFirebaseCategorySuccessImplCopyWith<$Res> {
  __$$DeleteFirebaseCategorySuccessImplCopyWithImpl(
      _$DeleteFirebaseCategorySuccessImpl _value,
      $Res Function(_$DeleteFirebaseCategorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteFirebaseCategorySuccessImpl
    implements DeleteFirebaseCategorySuccess {
  const _$DeleteFirebaseCategorySuccessImpl();

  @override
  String toString() {
    return 'AdminCategoriesState.deleteFirebaseCategorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFirebaseCategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategorySuccess != null) {
      return deleteFirebaseCategorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategorySuccess != null) {
      return deleteFirebaseCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteFirebaseCategorySuccess implements AdminCategoriesState {
  const factory DeleteFirebaseCategorySuccess() =
      _$DeleteFirebaseCategorySuccessImpl;
}

/// @nodoc
abstract class _$$DeleteFirebaseCategoryFailureImplCopyWith<$Res> {
  factory _$$DeleteFirebaseCategoryFailureImplCopyWith(
          _$DeleteFirebaseCategoryFailureImpl value,
          $Res Function(_$DeleteFirebaseCategoryFailureImpl) then) =
      __$$DeleteFirebaseCategoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DeleteFirebaseCategoryFailureImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res,
        _$DeleteFirebaseCategoryFailureImpl>
    implements _$$DeleteFirebaseCategoryFailureImplCopyWith<$Res> {
  __$$DeleteFirebaseCategoryFailureImplCopyWithImpl(
      _$DeleteFirebaseCategoryFailureImpl _value,
      $Res Function(_$DeleteFirebaseCategoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeleteFirebaseCategoryFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFirebaseCategoryFailureImpl
    implements DeleteFirebaseCategoryFailure {
  const _$DeleteFirebaseCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminCategoriesState.deleteFirebaseCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFirebaseCategoryFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFirebaseCategoryFailureImplCopyWith<
          _$DeleteFirebaseCategoryFailureImpl>
      get copyWith => __$$DeleteFirebaseCategoryFailureImplCopyWithImpl<
          _$DeleteFirebaseCategoryFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminCategoriesLoading,
    required TResult Function(List<Categories?> categoriesList)
        getAdminCategoriesListSuccess,
    required TResult Function() getAdminCategoriesListEmpty,
    required TResult Function(String errorMessage)
        getAdminCategoriesListFailure,
    required TResult Function() addNewCategorySuccess,
    required TResult Function(String errorMessage) addNewCategoryFailure,
    required TResult Function() updateCategorySuccess,
    required TResult Function(String errorMessage) updateCategoryFailure,
    required TResult Function() deleteCategorySuccess,
    required TResult Function(String errorMessage) deleteCategoryFailure,
    required TResult Function(List<MultilingualCategoryEntity> categoriesList)
        getFirebaseCategoriesSuccess,
    required TResult Function() getFirebaseCategoriesEmpty,
    required TResult Function(String errorMessage) getFirebaseCategoriesFailure,
    required TResult Function() addFirebaseCategorySuccess,
    required TResult Function(String errorMessage) addFirebaseCategoryFailure,
    required TResult Function() updateFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        updateFirebaseCategoryFailure,
    required TResult Function() deleteFirebaseCategorySuccess,
    required TResult Function(String errorMessage)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategoryFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminCategoriesLoading,
    TResult? Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult? Function()? getAdminCategoriesListEmpty,
    TResult? Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult? Function()? addNewCategorySuccess,
    TResult? Function(String errorMessage)? addNewCategoryFailure,
    TResult? Function()? updateCategorySuccess,
    TResult? Function(String errorMessage)? updateCategoryFailure,
    TResult? Function()? deleteCategorySuccess,
    TResult? Function(String errorMessage)? deleteCategoryFailure,
    TResult? Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult? Function()? getFirebaseCategoriesEmpty,
    TResult? Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult? Function()? addFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult? Function()? updateFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult? Function()? deleteFirebaseCategorySuccess,
    TResult? Function(String errorMessage)? deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategoryFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminCategoriesLoading,
    TResult Function(List<Categories?> categoriesList)?
        getAdminCategoriesListSuccess,
    TResult Function()? getAdminCategoriesListEmpty,
    TResult Function(String errorMessage)? getAdminCategoriesListFailure,
    TResult Function()? addNewCategorySuccess,
    TResult Function(String errorMessage)? addNewCategoryFailure,
    TResult Function()? updateCategorySuccess,
    TResult Function(String errorMessage)? updateCategoryFailure,
    TResult Function()? deleteCategorySuccess,
    TResult Function(String errorMessage)? deleteCategoryFailure,
    TResult Function(List<MultilingualCategoryEntity> categoriesList)?
        getFirebaseCategoriesSuccess,
    TResult Function()? getFirebaseCategoriesEmpty,
    TResult Function(String errorMessage)? getFirebaseCategoriesFailure,
    TResult Function()? addFirebaseCategorySuccess,
    TResult Function(String errorMessage)? addFirebaseCategoryFailure,
    TResult Function()? updateFirebaseCategorySuccess,
    TResult Function(String errorMessage)? updateFirebaseCategoryFailure,
    TResult Function()? deleteFirebaseCategorySuccess,
    TResult Function(String errorMessage)? deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategoryFailure != null) {
      return deleteFirebaseCategoryFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminCategoriesLoading value)
        adminCategoriesLoading,
    required TResult Function(GetAdminCategoriesListSuccess value)
        getAdminCategoriesListSuccess,
    required TResult Function(GetAdminCategoriesListEmpty value)
        getAdminCategoriesListEmpty,
    required TResult Function(GetAdminCategoriesListFailure value)
        getAdminCategoriesListFailure,
    required TResult Function(AddNewCategorySuccess value)
        addNewCategorySuccess,
    required TResult Function(AddNewCategoryFailure value)
        addNewCategoryFailure,
    required TResult Function(UpdateCategorySuccess value)
        updateCategorySuccess,
    required TResult Function(UpdateCategoryFailure value)
        updateCategoryFailure,
    required TResult Function(DeleteCategorySuccess value)
        deleteCategorySuccess,
    required TResult Function(DeleteCategoryFailure value)
        deleteCategoryFailure,
    required TResult Function(GetFirebaseCategoriesSuccess value)
        getFirebaseCategoriesSuccess,
    required TResult Function(GetFirebaseCategoriesEmpty value)
        getFirebaseCategoriesEmpty,
    required TResult Function(GetFirebaseCategoriesFailure value)
        getFirebaseCategoriesFailure,
    required TResult Function(AddFirebaseCategorySuccess value)
        addFirebaseCategorySuccess,
    required TResult Function(AddFirebaseCategoryFailure value)
        addFirebaseCategoryFailure,
    required TResult Function(UpdateFirebaseCategorySuccess value)
        updateFirebaseCategorySuccess,
    required TResult Function(UpdateFirebaseCategoryFailure value)
        updateFirebaseCategoryFailure,
    required TResult Function(DeleteFirebaseCategorySuccess value)
        deleteFirebaseCategorySuccess,
    required TResult Function(DeleteFirebaseCategoryFailure value)
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult? Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult? Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult? Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult? Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult? Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult? Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult? Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult? Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult? Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult? Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult? Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult? Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult? Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult? Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult? Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult? Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult? Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult? Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
  }) {
    return deleteFirebaseCategoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminCategoriesLoading value)? adminCategoriesLoading,
    TResult Function(GetAdminCategoriesListSuccess value)?
        getAdminCategoriesListSuccess,
    TResult Function(GetAdminCategoriesListEmpty value)?
        getAdminCategoriesListEmpty,
    TResult Function(GetAdminCategoriesListFailure value)?
        getAdminCategoriesListFailure,
    TResult Function(AddNewCategorySuccess value)? addNewCategorySuccess,
    TResult Function(AddNewCategoryFailure value)? addNewCategoryFailure,
    TResult Function(UpdateCategorySuccess value)? updateCategorySuccess,
    TResult Function(UpdateCategoryFailure value)? updateCategoryFailure,
    TResult Function(DeleteCategorySuccess value)? deleteCategorySuccess,
    TResult Function(DeleteCategoryFailure value)? deleteCategoryFailure,
    TResult Function(GetFirebaseCategoriesSuccess value)?
        getFirebaseCategoriesSuccess,
    TResult Function(GetFirebaseCategoriesEmpty value)?
        getFirebaseCategoriesEmpty,
    TResult Function(GetFirebaseCategoriesFailure value)?
        getFirebaseCategoriesFailure,
    TResult Function(AddFirebaseCategorySuccess value)?
        addFirebaseCategorySuccess,
    TResult Function(AddFirebaseCategoryFailure value)?
        addFirebaseCategoryFailure,
    TResult Function(UpdateFirebaseCategorySuccess value)?
        updateFirebaseCategorySuccess,
    TResult Function(UpdateFirebaseCategoryFailure value)?
        updateFirebaseCategoryFailure,
    TResult Function(DeleteFirebaseCategorySuccess value)?
        deleteFirebaseCategorySuccess,
    TResult Function(DeleteFirebaseCategoryFailure value)?
        deleteFirebaseCategoryFailure,
    required TResult orElse(),
  }) {
    if (deleteFirebaseCategoryFailure != null) {
      return deleteFirebaseCategoryFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFirebaseCategoryFailure implements AdminCategoriesState {
  const factory DeleteFirebaseCategoryFailure(final String errorMessage) =
      _$DeleteFirebaseCategoryFailureImpl;

  String get errorMessage;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFirebaseCategoryFailureImplCopyWith<
          _$DeleteFirebaseCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
