// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String title, String body, String productId, int indexId)
        sendNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendNewNotificationEvent value)
        sendNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotificationEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotificationEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNotificationEventCopyWith<$Res> {
  factory $SendNotificationEventCopyWith(SendNotificationEvent value,
          $Res Function(SendNotificationEvent) then) =
      _$SendNotificationEventCopyWithImpl<$Res, SendNotificationEvent>;
}

/// @nodoc
class _$SendNotificationEventCopyWithImpl<$Res,
        $Val extends SendNotificationEvent>
    implements $SendNotificationEventCopyWith<$Res> {
  _$SendNotificationEventCopyWithImpl(this._value, this._then);

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
    extends _$SendNotificationEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SendNotificationEvent.started()';
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
    required TResult Function(
            String title, String body, String productId, int indexId)
        sendNotificationEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
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
    required TResult Function(SendNewNotificationEvent value)
        sendNotificationEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotificationEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotificationEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SendNotificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendNewNotificationEventImplCopyWith<$Res> {
  factory _$$SendNewNotificationEventImplCopyWith(
          _$SendNewNotificationEventImpl value,
          $Res Function(_$SendNewNotificationEventImpl) then) =
      __$$SendNewNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String body, String productId, int indexId});
}

/// @nodoc
class __$$SendNewNotificationEventImplCopyWithImpl<$Res>
    extends _$SendNotificationEventCopyWithImpl<$Res,
        _$SendNewNotificationEventImpl>
    implements _$$SendNewNotificationEventImplCopyWith<$Res> {
  __$$SendNewNotificationEventImplCopyWithImpl(
      _$SendNewNotificationEventImpl _value,
      $Res Function(_$SendNewNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? productId = null,
    Object? indexId = null,
  }) {
    return _then(_$SendNewNotificationEventImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      indexId: null == indexId
          ? _value.indexId
          : indexId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendNewNotificationEventImpl implements SendNewNotificationEvent {
  const _$SendNewNotificationEventImpl(
      {required this.title,
      required this.body,
      required this.productId,
      required this.indexId});

  @override
  final String title;
  @override
  final String body;
  @override
  final String productId;
  @override
  final int indexId;

  @override
  String toString() {
    return 'SendNotificationEvent.sendNotificationEvent(title: $title, body: $body, productId: $productId, indexId: $indexId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewNotificationEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.indexId, indexId) || other.indexId == indexId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, productId, indexId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewNotificationEventImplCopyWith<_$SendNewNotificationEventImpl>
      get copyWith => __$$SendNewNotificationEventImplCopyWithImpl<
          _$SendNewNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String title, String body, String productId, int indexId)
        sendNotificationEvent,
  }) {
    return sendNotificationEvent(title, body, productId, indexId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
  }) {
    return sendNotificationEvent?.call(title, body, productId, indexId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title, String body, String productId, int indexId)?
        sendNotificationEvent,
    required TResult orElse(),
  }) {
    if (sendNotificationEvent != null) {
      return sendNotificationEvent(title, body, productId, indexId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendNewNotificationEvent value)
        sendNotificationEvent,
  }) {
    return sendNotificationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotificationEvent,
  }) {
    return sendNotificationEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotificationEvent,
    required TResult orElse(),
  }) {
    if (sendNotificationEvent != null) {
      return sendNotificationEvent(this);
    }
    return orElse();
  }
}

abstract class SendNewNotificationEvent implements SendNotificationEvent {
  const factory SendNewNotificationEvent(
      {required final String title,
      required final String body,
      required final String productId,
      required final int indexId}) = _$SendNewNotificationEventImpl;

  String get title;
  String get body;
  String get productId;
  int get indexId;
  @JsonKey(ignore: true)
  _$$SendNewNotificationEventImplCopyWith<_$SendNewNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) sendingNotificationLoading,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String errorMessage) sendNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? sendingNotificationLoading,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String errorMessage)? sendNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? sendingNotificationLoading,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String errorMessage)? sendNotificationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SendingNotificationLoading value)
        sendingNotificationLoading,
    required TResult Function(SendNotificationSuccess value)
        sendNotificationSuccess,
    required TResult Function(SendNotificationFailure value)
        sendNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult? Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult? Function(SendNotificationFailure value)? sendNotificationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult Function(SendNotificationFailure value)? sendNotificationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNotificationStateCopyWith<$Res> {
  factory $SendNotificationStateCopyWith(SendNotificationState value,
          $Res Function(SendNotificationState) then) =
      _$SendNotificationStateCopyWithImpl<$Res, SendNotificationState>;
}

/// @nodoc
class _$SendNotificationStateCopyWithImpl<$Res,
        $Val extends SendNotificationState>
    implements $SendNotificationStateCopyWith<$Res> {
  _$SendNotificationStateCopyWithImpl(this._value, this._then);

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
    extends _$SendNotificationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SendNotificationState.initial()';
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
    required TResult Function(int index) sendingNotificationLoading,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String errorMessage) sendNotificationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? sendingNotificationLoading,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String errorMessage)? sendNotificationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? sendingNotificationLoading,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String errorMessage)? sendNotificationFailure,
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
    required TResult Function(SendingNotificationLoading value)
        sendingNotificationLoading,
    required TResult Function(SendNotificationSuccess value)
        sendNotificationSuccess,
    required TResult Function(SendNotificationFailure value)
        sendNotificationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult? Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult? Function(SendNotificationFailure value)? sendNotificationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult Function(SendNotificationFailure value)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendNotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingNotificationLoadingImplCopyWith<$Res> {
  factory _$$SendingNotificationLoadingImplCopyWith(
          _$SendingNotificationLoadingImpl value,
          $Res Function(_$SendingNotificationLoadingImpl) then) =
      __$$SendingNotificationLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SendingNotificationLoadingImplCopyWithImpl<$Res>
    extends _$SendNotificationStateCopyWithImpl<$Res,
        _$SendingNotificationLoadingImpl>
    implements _$$SendingNotificationLoadingImplCopyWith<$Res> {
  __$$SendingNotificationLoadingImplCopyWithImpl(
      _$SendingNotificationLoadingImpl _value,
      $Res Function(_$SendingNotificationLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SendingNotificationLoadingImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendingNotificationLoadingImpl implements SendingNotificationLoading {
  const _$SendingNotificationLoadingImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'SendNotificationState.sendingNotificationLoading(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingNotificationLoadingImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendingNotificationLoadingImplCopyWith<_$SendingNotificationLoadingImpl>
      get copyWith => __$$SendingNotificationLoadingImplCopyWithImpl<
          _$SendingNotificationLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) sendingNotificationLoading,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String errorMessage) sendNotificationFailure,
  }) {
    return sendingNotificationLoading(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? sendingNotificationLoading,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String errorMessage)? sendNotificationFailure,
  }) {
    return sendingNotificationLoading?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? sendingNotificationLoading,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String errorMessage)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendingNotificationLoading != null) {
      return sendingNotificationLoading(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SendingNotificationLoading value)
        sendingNotificationLoading,
    required TResult Function(SendNotificationSuccess value)
        sendNotificationSuccess,
    required TResult Function(SendNotificationFailure value)
        sendNotificationFailure,
  }) {
    return sendingNotificationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult? Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult? Function(SendNotificationFailure value)? sendNotificationFailure,
  }) {
    return sendingNotificationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult Function(SendNotificationFailure value)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendingNotificationLoading != null) {
      return sendingNotificationLoading(this);
    }
    return orElse();
  }
}

abstract class SendingNotificationLoading implements SendNotificationState {
  const factory SendingNotificationLoading({required final int index}) =
      _$SendingNotificationLoadingImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SendingNotificationLoadingImplCopyWith<_$SendingNotificationLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendNotificationSuccessImplCopyWith<$Res> {
  factory _$$SendNotificationSuccessImplCopyWith(
          _$SendNotificationSuccessImpl value,
          $Res Function(_$SendNotificationSuccessImpl) then) =
      __$$SendNotificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendNotificationSuccessImplCopyWithImpl<$Res>
    extends _$SendNotificationStateCopyWithImpl<$Res,
        _$SendNotificationSuccessImpl>
    implements _$$SendNotificationSuccessImplCopyWith<$Res> {
  __$$SendNotificationSuccessImplCopyWithImpl(
      _$SendNotificationSuccessImpl _value,
      $Res Function(_$SendNotificationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendNotificationSuccessImpl implements SendNotificationSuccess {
  const _$SendNotificationSuccessImpl();

  @override
  String toString() {
    return 'SendNotificationState.sendNotificationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) sendingNotificationLoading,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String errorMessage) sendNotificationFailure,
  }) {
    return sendNotificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? sendingNotificationLoading,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String errorMessage)? sendNotificationFailure,
  }) {
    return sendNotificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? sendingNotificationLoading,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String errorMessage)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendNotificationSuccess != null) {
      return sendNotificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SendingNotificationLoading value)
        sendingNotificationLoading,
    required TResult Function(SendNotificationSuccess value)
        sendNotificationSuccess,
    required TResult Function(SendNotificationFailure value)
        sendNotificationFailure,
  }) {
    return sendNotificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult? Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult? Function(SendNotificationFailure value)? sendNotificationFailure,
  }) {
    return sendNotificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult Function(SendNotificationFailure value)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendNotificationSuccess != null) {
      return sendNotificationSuccess(this);
    }
    return orElse();
  }
}

abstract class SendNotificationSuccess implements SendNotificationState {
  const factory SendNotificationSuccess() = _$SendNotificationSuccessImpl;
}

/// @nodoc
abstract class _$$SendNotificationFailureImplCopyWith<$Res> {
  factory _$$SendNotificationFailureImplCopyWith(
          _$SendNotificationFailureImpl value,
          $Res Function(_$SendNotificationFailureImpl) then) =
      __$$SendNotificationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SendNotificationFailureImplCopyWithImpl<$Res>
    extends _$SendNotificationStateCopyWithImpl<$Res,
        _$SendNotificationFailureImpl>
    implements _$$SendNotificationFailureImplCopyWith<$Res> {
  __$$SendNotificationFailureImplCopyWithImpl(
      _$SendNotificationFailureImpl _value,
      $Res Function(_$SendNotificationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SendNotificationFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendNotificationFailureImpl implements SendNotificationFailure {
  const _$SendNotificationFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SendNotificationState.sendNotificationFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotificationFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNotificationFailureImplCopyWith<_$SendNotificationFailureImpl>
      get copyWith => __$$SendNotificationFailureImplCopyWithImpl<
          _$SendNotificationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) sendingNotificationLoading,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String errorMessage) sendNotificationFailure,
  }) {
    return sendNotificationFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? sendingNotificationLoading,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String errorMessage)? sendNotificationFailure,
  }) {
    return sendNotificationFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? sendingNotificationLoading,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String errorMessage)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendNotificationFailure != null) {
      return sendNotificationFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SendingNotificationLoading value)
        sendingNotificationLoading,
    required TResult Function(SendNotificationSuccess value)
        sendNotificationSuccess,
    required TResult Function(SendNotificationFailure value)
        sendNotificationFailure,
  }) {
    return sendNotificationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult? Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult? Function(SendNotificationFailure value)? sendNotificationFailure,
  }) {
    return sendNotificationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SendingNotificationLoading value)?
        sendingNotificationLoading,
    TResult Function(SendNotificationSuccess value)? sendNotificationSuccess,
    TResult Function(SendNotificationFailure value)? sendNotificationFailure,
    required TResult orElse(),
  }) {
    if (sendNotificationFailure != null) {
      return sendNotificationFailure(this);
    }
    return orElse();
  }
}

abstract class SendNotificationFailure implements SendNotificationState {
  const factory SendNotificationFailure(final String errorMessage) =
      _$SendNotificationFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SendNotificationFailureImplCopyWith<_$SendNotificationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
