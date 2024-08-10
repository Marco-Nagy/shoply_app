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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminCategories,
    TResult? Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult? Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult? Function(String categoryId)? deleteCategoryEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminCategories,
    TResult Function(CreateCategoryRequest body)? createNewCategoryEvent,
    TResult Function(UpdateCategoryRequest body)? updateCategoryEvent,
    TResult Function(String categoryId)? deleteCategoryEvent,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminCategoriesListEvent value)? fetchAdminCategories,
    TResult Function(CreateNewCategoryEvent value)? createNewCategoryEvent,
    TResult Function(UpdateCategoryEvent value)? updateCategoryEvent,
    TResult Function(DeleteCategoryEvent value)? deleteCategoryEvent,
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
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AdminCategoriesEvent.started'));
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
}

/// @nodoc

class _$FetchAdminCategoriesListEventImpl
    with DiagnosticableTreeMixin
    implements FetchAdminCategoriesListEvent {
  const _$FetchAdminCategoriesListEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesEvent.fetchAdminCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesEvent.fetchAdminCategories'));
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

class _$CreateNewCategoryEventImpl
    with DiagnosticableTreeMixin
    implements CreateNewCategoryEvent {
  const _$CreateNewCategoryEventImpl({required this.body});

  @override
  final CreateCategoryRequest body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesEvent.createNewCategoryEvent(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesEvent.createNewCategoryEvent'))
      ..add(DiagnosticsProperty('body', body));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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

class _$UpdateCategoryEventImpl
    with DiagnosticableTreeMixin
    implements UpdateCategoryEvent {
  const _$UpdateCategoryEventImpl({required this.body});

  @override
  final UpdateCategoryRequest body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesEvent.updateCategoryEvent(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesEvent.updateCategoryEvent'))
      ..add(DiagnosticsProperty('body', body));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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

class _$DeleteCategoryEventImpl
    with DiagnosticableTreeMixin
    implements DeleteCategoryEvent {
  const _$DeleteCategoryEventImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesEvent.deleteCategoryEvent(categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesEvent.deleteCategoryEvent'))
      ..add(DiagnosticsProperty('categoryId', categoryId));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AdminCategoriesState.initial'));
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
}

/// @nodoc

class _$AdminCategoriesLoadingImpl
    with DiagnosticableTreeMixin
    implements AdminCategoriesLoading {
  const _$AdminCategoriesLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.adminCategoriesLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesState.adminCategoriesLoading'));
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
    with DiagnosticableTreeMixin
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.getAdminCategoriesListSuccess(categoriesList: $categoriesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesState.getAdminCategoriesListSuccess'))
      ..add(DiagnosticsProperty('categoriesList', categoriesList));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$GetAdminCategoriesListEmptyImpl
    with DiagnosticableTreeMixin
    implements GetAdminCategoriesListEmpty {
  const _$GetAdminCategoriesListEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.getAdminCategoriesListEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesState.getAdminCategoriesListEmpty'));
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
    with DiagnosticableTreeMixin
    implements GetAdminCategoriesListFailure {
  const _$GetAdminCategoriesListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.getAdminCategoriesListFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesState.getAdminCategoriesListFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$AddNewCategorySuccessImpl
    with DiagnosticableTreeMixin
    implements AddNewCategorySuccess {
  const _$AddNewCategorySuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.addNewCategorySuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesState.addNewCategorySuccess'));
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

class _$AddNewCategoryFailureImpl
    with DiagnosticableTreeMixin
    implements AddNewCategoryFailure {
  const _$AddNewCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.addNewCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesState.addNewCategoryFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$UpdateCategorySuccessImpl
    with DiagnosticableTreeMixin
    implements UpdateCategorySuccess {
  const _$UpdateCategorySuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.updateCategorySuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesState.updateCategorySuccess'));
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

class _$UpdateCategoryFailureImpl
    with DiagnosticableTreeMixin
    implements UpdateCategoryFailure {
  const _$UpdateCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.updateCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesState.updateCategoryFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$DeleteCategorySuccessImpl
    with DiagnosticableTreeMixin
    implements DeleteCategorySuccess {
  const _$DeleteCategorySuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.deleteCategorySuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AdminCategoriesState.deleteCategorySuccess'));
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

class _$DeleteCategoryFailureImpl
    with DiagnosticableTreeMixin
    implements DeleteCategoryFailure {
  const _$DeleteCategoryFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminCategoriesState.deleteCategoryFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AdminCategoriesState.deleteCategoryFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$$DeleteCategoryFailureImplCopyWith<_$DeleteCategoryFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
