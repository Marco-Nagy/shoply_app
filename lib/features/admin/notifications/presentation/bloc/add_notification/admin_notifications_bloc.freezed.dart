// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminNotificationsEventCopyWith<$Res> {
  factory $AdminNotificationsEventCopyWith(AdminNotificationsEvent value,
          $Res Function(AdminNotificationsEvent) then) =
      _$AdminNotificationsEventCopyWithImpl<$Res, AdminNotificationsEvent>;
}

/// @nodoc
class _$AdminNotificationsEventCopyWithImpl<$Res,
        $Val extends AdminNotificationsEvent>
    implements $AdminNotificationsEventCopyWith<$Res> {
  _$AdminNotificationsEventCopyWithImpl(this._value, this._then);

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
    extends _$AdminNotificationsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AdminNotificationsEvent.started()';
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
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
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
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdminNotificationsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchAdminNotificationsListEventImplCopyWith<$Res> {
  factory _$$FetchAdminNotificationsListEventImplCopyWith(
          _$FetchAdminNotificationsListEventImpl value,
          $Res Function(_$FetchAdminNotificationsListEventImpl) then) =
      __$$FetchAdminNotificationsListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAdminNotificationsListEventImplCopyWithImpl<$Res>
    extends _$AdminNotificationsEventCopyWithImpl<$Res,
        _$FetchAdminNotificationsListEventImpl>
    implements _$$FetchAdminNotificationsListEventImplCopyWith<$Res> {
  __$$FetchAdminNotificationsListEventImplCopyWithImpl(
      _$FetchAdminNotificationsListEventImpl _value,
      $Res Function(_$FetchAdminNotificationsListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAdminNotificationsListEventImpl
    implements FetchAdminNotificationsListEvent {
  const _$FetchAdminNotificationsListEventImpl();

  @override
  String toString() {
    return 'AdminNotificationsEvent.fetchAdminNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAdminNotificationsListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) {
    return fetchAdminNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) {
    return fetchAdminNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (fetchAdminNotifications != null) {
      return fetchAdminNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) {
    return fetchAdminNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) {
    return fetchAdminNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (fetchAdminNotifications != null) {
      return fetchAdminNotifications(this);
    }
    return orElse();
  }
}

abstract class FetchAdminNotificationsListEvent
    implements AdminNotificationsEvent {
  const factory FetchAdminNotificationsListEvent() =
      _$FetchAdminNotificationsListEventImpl;
}

/// @nodoc
abstract class _$$CreateNotificationEventImplCopyWith<$Res> {
  factory _$$CreateNotificationEventImplCopyWith(
          _$CreateNotificationEventImpl value,
          $Res Function(_$CreateNotificationEventImpl) then) =
      __$$CreateNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNotificationModel body});
}

/// @nodoc
class __$$CreateNotificationEventImplCopyWithImpl<$Res>
    extends _$AdminNotificationsEventCopyWithImpl<$Res,
        _$CreateNotificationEventImpl>
    implements _$$CreateNotificationEventImplCopyWith<$Res> {
  __$$CreateNotificationEventImplCopyWithImpl(
      _$CreateNotificationEventImpl _value,
      $Res Function(_$CreateNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$CreateNotificationEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddNotificationModel,
    ));
  }
}

/// @nodoc

class _$CreateNotificationEventImpl implements CreateNotificationEvent {
  const _$CreateNotificationEventImpl({required this.body});

  @override
  final AddNotificationModel body;

  @override
  String toString() {
    return 'AdminNotificationsEvent.createNewNotificationEvent(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNotificationEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNotificationEventImplCopyWith<_$CreateNotificationEventImpl>
      get copyWith => __$$CreateNotificationEventImplCopyWithImpl<
          _$CreateNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) {
    return createNewNotificationEvent(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) {
    return createNewNotificationEvent?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (createNewNotificationEvent != null) {
      return createNewNotificationEvent(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) {
    return createNewNotificationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) {
    return createNewNotificationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (createNewNotificationEvent != null) {
      return createNewNotificationEvent(this);
    }
    return orElse();
  }
}

abstract class CreateNotificationEvent implements AdminNotificationsEvent {
  const factory CreateNotificationEvent(
          {required final AddNotificationModel body}) =
      _$CreateNotificationEventImpl;

  AddNotificationModel get body;
  @JsonKey(ignore: true)
  _$$CreateNotificationEventImplCopyWith<_$CreateNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNotificationEventImplCopyWith<$Res> {
  factory _$$UpdateNotificationEventImplCopyWith(
          _$UpdateNotificationEventImpl value,
          $Res Function(_$UpdateNotificationEventImpl) then) =
      __$$UpdateNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNotificationModel body});
}

/// @nodoc
class __$$UpdateNotificationEventImplCopyWithImpl<$Res>
    extends _$AdminNotificationsEventCopyWithImpl<$Res,
        _$UpdateNotificationEventImpl>
    implements _$$UpdateNotificationEventImplCopyWith<$Res> {
  __$$UpdateNotificationEventImplCopyWithImpl(
      _$UpdateNotificationEventImpl _value,
      $Res Function(_$UpdateNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$UpdateNotificationEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddNotificationModel,
    ));
  }
}

/// @nodoc

class _$UpdateNotificationEventImpl implements UpdateNotificationEvent {
  const _$UpdateNotificationEventImpl({required this.body});

  @override
  final AddNotificationModel body;

  @override
  String toString() {
    return 'AdminNotificationsEvent.updateNotificationEvent(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotificationEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotificationEventImplCopyWith<_$UpdateNotificationEventImpl>
      get copyWith => __$$UpdateNotificationEventImplCopyWithImpl<
          _$UpdateNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) {
    return updateNotificationEvent(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) {
    return updateNotificationEvent?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (updateNotificationEvent != null) {
      return updateNotificationEvent(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) {
    return updateNotificationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) {
    return updateNotificationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (updateNotificationEvent != null) {
      return updateNotificationEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateNotificationEvent implements AdminNotificationsEvent {
  const factory UpdateNotificationEvent(
          {required final AddNotificationModel body}) =
      _$UpdateNotificationEventImpl;

  AddNotificationModel get body;
  @JsonKey(ignore: true)
  _$$UpdateNotificationEventImplCopyWith<_$UpdateNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotificationEventImplCopyWith<$Res> {
  factory _$$DeleteNotificationEventImplCopyWith(
          _$DeleteNotificationEventImpl value,
          $Res Function(_$DeleteNotificationEventImpl) then) =
      __$$DeleteNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNotificationModel notification});
}

/// @nodoc
class __$$DeleteNotificationEventImplCopyWithImpl<$Res>
    extends _$AdminNotificationsEventCopyWithImpl<$Res,
        _$DeleteNotificationEventImpl>
    implements _$$DeleteNotificationEventImplCopyWith<$Res> {
  __$$DeleteNotificationEventImplCopyWithImpl(
      _$DeleteNotificationEventImpl _value,
      $Res Function(_$DeleteNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$DeleteNotificationEventImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as AddNotificationModel,
    ));
  }
}

/// @nodoc

class _$DeleteNotificationEventImpl implements DeleteNotificationEvent {
  const _$DeleteNotificationEventImpl({required this.notification});

  @override
  final AddNotificationModel notification;

  @override
  String toString() {
    return 'AdminNotificationsEvent.deleteNotificationEvent(notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationEventImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationEventImplCopyWith<_$DeleteNotificationEventImpl>
      get copyWith => __$$DeleteNotificationEventImplCopyWithImpl<
          _$DeleteNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAdminNotifications,
    required TResult Function(AddNotificationModel body)
        createNewNotificationEvent,
    required TResult Function(AddNotificationModel body)
        updateNotificationEvent,
    required TResult Function(AddNotificationModel notification)
        deleteNotificationEvent,
  }) {
    return deleteNotificationEvent(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAdminNotifications,
    TResult? Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult? Function(AddNotificationModel body)? updateNotificationEvent,
    TResult? Function(AddNotificationModel notification)?
        deleteNotificationEvent,
  }) {
    return deleteNotificationEvent?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAdminNotifications,
    TResult Function(AddNotificationModel body)? createNewNotificationEvent,
    TResult Function(AddNotificationModel body)? updateNotificationEvent,
    TResult Function(AddNotificationModel notification)?
        deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (deleteNotificationEvent != null) {
      return deleteNotificationEvent(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAdminNotificationsListEvent value)
        fetchAdminNotifications,
    required TResult Function(CreateNotificationEvent value)
        createNewNotificationEvent,
    required TResult Function(UpdateNotificationEvent value)
        updateNotificationEvent,
    required TResult Function(DeleteNotificationEvent value)
        deleteNotificationEvent,
  }) {
    return deleteNotificationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult? Function(CreateNotificationEvent value)?
        createNewNotificationEvent,
    TResult? Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult? Function(DeleteNotificationEvent value)? deleteNotificationEvent,
  }) {
    return deleteNotificationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAdminNotificationsListEvent value)?
        fetchAdminNotifications,
    TResult Function(CreateNotificationEvent value)? createNewNotificationEvent,
    TResult Function(UpdateNotificationEvent value)? updateNotificationEvent,
    TResult Function(DeleteNotificationEvent value)? deleteNotificationEvent,
    required TResult orElse(),
  }) {
    if (deleteNotificationEvent != null) {
      return deleteNotificationEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteNotificationEvent implements AdminNotificationsEvent {
  const factory DeleteNotificationEvent(
          {required final AddNotificationModel notification}) =
      _$DeleteNotificationEventImpl;

  AddNotificationModel get notification;
  @JsonKey(ignore: true)
  _$$DeleteNotificationEventImplCopyWith<_$DeleteNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminNotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminNotificationsStateCopyWith<$Res> {
  factory $AdminNotificationsStateCopyWith(AdminNotificationsState value,
          $Res Function(AdminNotificationsState) then) =
      _$AdminNotificationsStateCopyWithImpl<$Res, AdminNotificationsState>;
}

/// @nodoc
class _$AdminNotificationsStateCopyWithImpl<$Res,
        $Val extends AdminNotificationsState>
    implements $AdminNotificationsStateCopyWith<$Res> {
  _$AdminNotificationsStateCopyWithImpl(this._value, this._then);

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
    extends _$AdminNotificationsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AdminNotificationsState.initial()';
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
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
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
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdminNotificationsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AdminNotificationsLoadingImplCopyWith<$Res> {
  factory _$$AdminNotificationsLoadingImplCopyWith(
          _$AdminNotificationsLoadingImpl value,
          $Res Function(_$AdminNotificationsLoadingImpl) then) =
      __$$AdminNotificationsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminNotificationsLoadingImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$AdminNotificationsLoadingImpl>
    implements _$$AdminNotificationsLoadingImplCopyWith<$Res> {
  __$$AdminNotificationsLoadingImplCopyWithImpl(
      _$AdminNotificationsLoadingImpl _value,
      $Res Function(_$AdminNotificationsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AdminNotificationsLoadingImpl implements AdminNotificationsLoading {
  const _$AdminNotificationsLoadingImpl();

  @override
  String toString() {
    return 'AdminNotificationsState.adminNotificationsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminNotificationsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return adminNotificationsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return adminNotificationsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (adminNotificationsLoading != null) {
      return adminNotificationsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return adminNotificationsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return adminNotificationsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (adminNotificationsLoading != null) {
      return adminNotificationsLoading(this);
    }
    return orElse();
  }
}

abstract class AdminNotificationsLoading implements AdminNotificationsState {
  const factory AdminNotificationsLoading() = _$AdminNotificationsLoadingImpl;
}

/// @nodoc
abstract class _$$GetAdminNotificationsListSuccessImplCopyWith<$Res> {
  factory _$$GetAdminNotificationsListSuccessImplCopyWith(
          _$GetAdminNotificationsListSuccessImpl value,
          $Res Function(_$GetAdminNotificationsListSuccessImpl) then) =
      __$$GetAdminNotificationsListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddNotificationModel?> notificationsList});
}

/// @nodoc
class __$$GetAdminNotificationsListSuccessImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$GetAdminNotificationsListSuccessImpl>
    implements _$$GetAdminNotificationsListSuccessImplCopyWith<$Res> {
  __$$GetAdminNotificationsListSuccessImplCopyWithImpl(
      _$GetAdminNotificationsListSuccessImpl _value,
      $Res Function(_$GetAdminNotificationsListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsList = null,
  }) {
    return _then(_$GetAdminNotificationsListSuccessImpl(
      null == notificationsList
          ? _value._notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as List<AddNotificationModel?>,
    ));
  }
}

/// @nodoc

class _$GetAdminNotificationsListSuccessImpl
    implements GetAdminNotificationsListSuccess {
  const _$GetAdminNotificationsListSuccessImpl(
      final List<AddNotificationModel?> notificationsList)
      : _notificationsList = notificationsList;

  final List<AddNotificationModel?> _notificationsList;
  @override
  List<AddNotificationModel?> get notificationsList {
    if (_notificationsList is EqualUnmodifiableListView)
      return _notificationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsList);
  }

  @override
  String toString() {
    return 'AdminNotificationsState.getAdminNotificationsListSuccess(notificationsList: $notificationsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminNotificationsListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._notificationsList, _notificationsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminNotificationsListSuccessImplCopyWith<
          _$GetAdminNotificationsListSuccessImpl>
      get copyWith => __$$GetAdminNotificationsListSuccessImplCopyWithImpl<
          _$GetAdminNotificationsListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return getAdminNotificationsListSuccess(notificationsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return getAdminNotificationsListSuccess?.call(notificationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListSuccess != null) {
      return getAdminNotificationsListSuccess(notificationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListSuccess != null) {
      return getAdminNotificationsListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAdminNotificationsListSuccess
    implements AdminNotificationsState {
  const factory GetAdminNotificationsListSuccess(
          final List<AddNotificationModel?> notificationsList) =
      _$GetAdminNotificationsListSuccessImpl;

  List<AddNotificationModel?> get notificationsList;
  @JsonKey(ignore: true)
  _$$GetAdminNotificationsListSuccessImplCopyWith<
          _$GetAdminNotificationsListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAdminNotificationsListEmptyImplCopyWith<$Res> {
  factory _$$GetAdminNotificationsListEmptyImplCopyWith(
          _$GetAdminNotificationsListEmptyImpl value,
          $Res Function(_$GetAdminNotificationsListEmptyImpl) then) =
      __$$GetAdminNotificationsListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdminNotificationsListEmptyImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$GetAdminNotificationsListEmptyImpl>
    implements _$$GetAdminNotificationsListEmptyImplCopyWith<$Res> {
  __$$GetAdminNotificationsListEmptyImplCopyWithImpl(
      _$GetAdminNotificationsListEmptyImpl _value,
      $Res Function(_$GetAdminNotificationsListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAdminNotificationsListEmptyImpl
    implements GetAdminNotificationsListEmpty {
  const _$GetAdminNotificationsListEmptyImpl();

  @override
  String toString() {
    return 'AdminNotificationsState.getAdminNotificationsListEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminNotificationsListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return getAdminNotificationsListEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return getAdminNotificationsListEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListEmpty != null) {
      return getAdminNotificationsListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListEmpty != null) {
      return getAdminNotificationsListEmpty(this);
    }
    return orElse();
  }
}

abstract class GetAdminNotificationsListEmpty
    implements AdminNotificationsState {
  const factory GetAdminNotificationsListEmpty() =
      _$GetAdminNotificationsListEmptyImpl;
}

/// @nodoc
abstract class _$$GetAdminNotificationsListFailureImplCopyWith<$Res> {
  factory _$$GetAdminNotificationsListFailureImplCopyWith(
          _$GetAdminNotificationsListFailureImpl value,
          $Res Function(_$GetAdminNotificationsListFailureImpl) then) =
      __$$GetAdminNotificationsListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetAdminNotificationsListFailureImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$GetAdminNotificationsListFailureImpl>
    implements _$$GetAdminNotificationsListFailureImplCopyWith<$Res> {
  __$$GetAdminNotificationsListFailureImplCopyWithImpl(
      _$GetAdminNotificationsListFailureImpl _value,
      $Res Function(_$GetAdminNotificationsListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetAdminNotificationsListFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAdminNotificationsListFailureImpl
    implements GetAdminNotificationsListFailure {
  const _$GetAdminNotificationsListFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminNotificationsState.getAdminNotificationsListFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminNotificationsListFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminNotificationsListFailureImplCopyWith<
          _$GetAdminNotificationsListFailureImpl>
      get copyWith => __$$GetAdminNotificationsListFailureImplCopyWithImpl<
          _$GetAdminNotificationsListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return getAdminNotificationsListFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return getAdminNotificationsListFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListFailure != null) {
      return getAdminNotificationsListFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return getAdminNotificationsListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (getAdminNotificationsListFailure != null) {
      return getAdminNotificationsListFailure(this);
    }
    return orElse();
  }
}

abstract class GetAdminNotificationsListFailure
    implements AdminNotificationsState {
  const factory GetAdminNotificationsListFailure(final String errorMessage) =
      _$GetAdminNotificationsListFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GetAdminNotificationsListFailureImplCopyWith<
          _$GetAdminNotificationsListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewNotificationSuccessImplCopyWith<$Res> {
  factory _$$AddNewNotificationSuccessImplCopyWith(
          _$AddNewNotificationSuccessImpl value,
          $Res Function(_$AddNewNotificationSuccessImpl) then) =
      __$$AddNewNotificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddNewNotificationSuccessImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$AddNewNotificationSuccessImpl>
    implements _$$AddNewNotificationSuccessImplCopyWith<$Res> {
  __$$AddNewNotificationSuccessImplCopyWithImpl(
      _$AddNewNotificationSuccessImpl _value,
      $Res Function(_$AddNewNotificationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddNewNotificationSuccessImpl implements AddNewNotificationSuccess {
  const _$AddNewNotificationSuccessImpl();

  @override
  String toString() {
    return 'AdminNotificationsState.addNotificationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewNotificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return addNotificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return addNotificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (addNotificationSuccess != null) {
      return addNotificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return addNotificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return addNotificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (addNotificationSuccess != null) {
      return addNotificationSuccess(this);
    }
    return orElse();
  }
}

abstract class AddNewNotificationSuccess implements AdminNotificationsState {
  const factory AddNewNotificationSuccess() = _$AddNewNotificationSuccessImpl;
}

/// @nodoc
abstract class _$$AddNewNotificationFailureImplCopyWith<$Res> {
  factory _$$AddNewNotificationFailureImplCopyWith(
          _$AddNewNotificationFailureImpl value,
          $Res Function(_$AddNewNotificationFailureImpl) then) =
      __$$AddNewNotificationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AddNewNotificationFailureImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$AddNewNotificationFailureImpl>
    implements _$$AddNewNotificationFailureImplCopyWith<$Res> {
  __$$AddNewNotificationFailureImplCopyWithImpl(
      _$AddNewNotificationFailureImpl _value,
      $Res Function(_$AddNewNotificationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AddNewNotificationFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewNotificationFailureImpl implements AddNewNotificationFailure {
  const _$AddNewNotificationFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminNotificationsState.addNotificationFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewNotificationFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewNotificationFailureImplCopyWith<_$AddNewNotificationFailureImpl>
      get copyWith => __$$AddNewNotificationFailureImplCopyWithImpl<
          _$AddNewNotificationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return addNotificationFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return addNotificationFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (addNotificationFailure != null) {
      return addNotificationFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return addNotificationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return addNotificationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (addNotificationFailure != null) {
      return addNotificationFailure(this);
    }
    return orElse();
  }
}

abstract class AddNewNotificationFailure implements AdminNotificationsState {
  const factory AddNewNotificationFailure(final String errorMessage) =
      _$AddNewNotificationFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$AddNewNotificationFailureImplCopyWith<_$AddNewNotificationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotificationSuccessImplCopyWith<$Res> {
  factory _$$DeleteNotificationSuccessImplCopyWith(
          _$DeleteNotificationSuccessImpl value,
          $Res Function(_$DeleteNotificationSuccessImpl) then) =
      __$$DeleteNotificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteNotificationSuccessImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$DeleteNotificationSuccessImpl>
    implements _$$DeleteNotificationSuccessImplCopyWith<$Res> {
  __$$DeleteNotificationSuccessImplCopyWithImpl(
      _$DeleteNotificationSuccessImpl _value,
      $Res Function(_$DeleteNotificationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteNotificationSuccessImpl implements DeleteNotificationSuccess {
  const _$DeleteNotificationSuccessImpl();

  @override
  String toString() {
    return 'AdminNotificationsState.deleteNotificationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return deleteNotificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return deleteNotificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (deleteNotificationSuccess != null) {
      return deleteNotificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return deleteNotificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return deleteNotificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (deleteNotificationSuccess != null) {
      return deleteNotificationSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteNotificationSuccess implements AdminNotificationsState {
  const factory DeleteNotificationSuccess() = _$DeleteNotificationSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteNotificationFailureImplCopyWith<$Res> {
  factory _$$DeleteNotificationFailureImplCopyWith(
          _$DeleteNotificationFailureImpl value,
          $Res Function(_$DeleteNotificationFailureImpl) then) =
      __$$DeleteNotificationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DeleteNotificationFailureImplCopyWithImpl<$Res>
    extends _$AdminNotificationsStateCopyWithImpl<$Res,
        _$DeleteNotificationFailureImpl>
    implements _$$DeleteNotificationFailureImplCopyWith<$Res> {
  __$$DeleteNotificationFailureImplCopyWithImpl(
      _$DeleteNotificationFailureImpl _value,
      $Res Function(_$DeleteNotificationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeleteNotificationFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNotificationFailureImpl implements DeleteNotificationFailure {
  const _$DeleteNotificationFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminNotificationsState.deleteNotificationFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationFailureImplCopyWith<_$DeleteNotificationFailureImpl>
      get copyWith => __$$DeleteNotificationFailureImplCopyWithImpl<
          _$DeleteNotificationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adminNotificationsLoading,
    required TResult Function(List<AddNotificationModel?> notificationsList)
        getAdminNotificationsListSuccess,
    required TResult Function() getAdminNotificationsListEmpty,
    required TResult Function(String errorMessage)
        getAdminNotificationsListFailure,
    required TResult Function() addNotificationSuccess,
    required TResult Function(String errorMessage) addNotificationFailure,
    required TResult Function() deleteNotificationSuccess,
    required TResult Function(String errorMessage) deleteNotificationFailure,
  }) {
    return deleteNotificationFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adminNotificationsLoading,
    TResult? Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult? Function()? getAdminNotificationsListEmpty,
    TResult? Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult? Function()? addNotificationSuccess,
    TResult? Function(String errorMessage)? addNotificationFailure,
    TResult? Function()? deleteNotificationSuccess,
    TResult? Function(String errorMessage)? deleteNotificationFailure,
  }) {
    return deleteNotificationFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adminNotificationsLoading,
    TResult Function(List<AddNotificationModel?> notificationsList)?
        getAdminNotificationsListSuccess,
    TResult Function()? getAdminNotificationsListEmpty,
    TResult Function(String errorMessage)? getAdminNotificationsListFailure,
    TResult Function()? addNotificationSuccess,
    TResult Function(String errorMessage)? addNotificationFailure,
    TResult Function()? deleteNotificationSuccess,
    TResult Function(String errorMessage)? deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (deleteNotificationFailure != null) {
      return deleteNotificationFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AdminNotificationsLoading value)
        adminNotificationsLoading,
    required TResult Function(GetAdminNotificationsListSuccess value)
        getAdminNotificationsListSuccess,
    required TResult Function(GetAdminNotificationsListEmpty value)
        getAdminNotificationsListEmpty,
    required TResult Function(GetAdminNotificationsListFailure value)
        getAdminNotificationsListFailure,
    required TResult Function(AddNewNotificationSuccess value)
        addNotificationSuccess,
    required TResult Function(AddNewNotificationFailure value)
        addNotificationFailure,
    required TResult Function(DeleteNotificationSuccess value)
        deleteNotificationSuccess,
    required TResult Function(DeleteNotificationFailure value)
        deleteNotificationFailure,
  }) {
    return deleteNotificationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult? Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult? Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult? Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult? Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult? Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult? Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult? Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
  }) {
    return deleteNotificationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AdminNotificationsLoading value)?
        adminNotificationsLoading,
    TResult Function(GetAdminNotificationsListSuccess value)?
        getAdminNotificationsListSuccess,
    TResult Function(GetAdminNotificationsListEmpty value)?
        getAdminNotificationsListEmpty,
    TResult Function(GetAdminNotificationsListFailure value)?
        getAdminNotificationsListFailure,
    TResult Function(AddNewNotificationSuccess value)? addNotificationSuccess,
    TResult Function(AddNewNotificationFailure value)? addNotificationFailure,
    TResult Function(DeleteNotificationSuccess value)?
        deleteNotificationSuccess,
    TResult Function(DeleteNotificationFailure value)?
        deleteNotificationFailure,
    required TResult orElse(),
  }) {
    if (deleteNotificationFailure != null) {
      return deleteNotificationFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteNotificationFailure implements AdminNotificationsState {
  const factory DeleteNotificationFailure(final String errorMessage) =
      _$DeleteNotificationFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$DeleteNotificationFailureImplCopyWith<_$DeleteNotificationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
