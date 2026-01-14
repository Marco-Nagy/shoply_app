// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
    required TResult Function(String imgUrl, String role) signUp,
    required TResult Function(AuthProviderType type, String? rule) socialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
    TResult? Function(String imgUrl, String role)? signUp,
    TResult? Function(AuthProviderType type, String? rule)? socialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    TResult Function(String imgUrl, String role)? signUp,
    TResult Function(AuthProviderType type, String? rule)? socialSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SocialSignInEvent value) socialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SocialSignInEvent value)? socialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SocialSignInEvent value)? socialSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
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
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
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
    required TResult Function() login,
    required TResult Function(String imgUrl, String role) signUp,
    required TResult Function(AuthProviderType type, String? rule) socialSignIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
    TResult? Function(String imgUrl, String role)? signUp,
    TResult? Function(AuthProviderType type, String? rule)? socialSignIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    TResult Function(String imgUrl, String role)? signUp,
    TResult Function(AuthProviderType type, String? rule)? socialSignIn,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SocialSignInEvent value) socialSignIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SocialSignInEvent value)? socialSignIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SocialSignInEvent value)? socialSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
    required TResult Function(String imgUrl, String role) signUp,
    required TResult Function(AuthProviderType type, String? rule) socialSignIn,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
    TResult? Function(String imgUrl, String role)? signUp,
    TResult? Function(AuthProviderType type, String? rule)? socialSignIn,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    TResult Function(String imgUrl, String role)? signUp,
    TResult Function(AuthProviderType type, String? rule)? socialSignIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SocialSignInEvent value) socialSignIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SocialSignInEvent value)? socialSignIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SocialSignInEvent value)? socialSignIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent() = _$LoginEventImpl;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imgUrl, String role});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgUrl = null,
    Object? role = null,
  }) {
    return _then(_$SignUpEventImpl(
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl implements SignUpEvent {
  const _$SignUpEventImpl({required this.imgUrl, required this.role});

  @override
  final String imgUrl;
  @override
  final String role;

  @override
  String toString() {
    return 'AuthEvent.signUp(imgUrl: $imgUrl, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imgUrl, role);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
    required TResult Function(String imgUrl, String role) signUp,
    required TResult Function(AuthProviderType type, String? rule) socialSignIn,
  }) {
    return signUp(imgUrl, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
    TResult? Function(String imgUrl, String role)? signUp,
    TResult? Function(AuthProviderType type, String? rule)? socialSignIn,
  }) {
    return signUp?.call(imgUrl, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    TResult Function(String imgUrl, String role)? signUp,
    TResult Function(AuthProviderType type, String? rule)? socialSignIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(imgUrl, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SocialSignInEvent value) socialSignIn,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SocialSignInEvent value)? socialSignIn,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SocialSignInEvent value)? socialSignIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      {required final String imgUrl,
      required final String role}) = _$SignUpEventImpl;

  String get imgUrl;
  String get role;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocialSignInEventImplCopyWith<$Res> {
  factory _$$SocialSignInEventImplCopyWith(_$SocialSignInEventImpl value,
          $Res Function(_$SocialSignInEventImpl) then) =
      __$$SocialSignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthProviderType type, String? rule});
}

/// @nodoc
class __$$SocialSignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialSignInEventImpl>
    implements _$$SocialSignInEventImplCopyWith<$Res> {
  __$$SocialSignInEventImplCopyWithImpl(_$SocialSignInEventImpl _value,
      $Res Function(_$SocialSignInEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_$SocialSignInEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthProviderType,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SocialSignInEventImpl implements SocialSignInEvent {
  const _$SocialSignInEventImpl({required this.type, this.rule});

  @override
  final AuthProviderType type;
  @override
  final String? rule;

  @override
  String toString() {
    return 'AuthEvent.socialSignIn(type: $type, rule: $rule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialSignInEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialSignInEventImplCopyWith<_$SocialSignInEventImpl> get copyWith =>
      __$$SocialSignInEventImplCopyWithImpl<_$SocialSignInEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
    required TResult Function(String imgUrl, String role) signUp,
    required TResult Function(AuthProviderType type, String? rule) socialSignIn,
  }) {
    return socialSignIn(type, rule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
    TResult? Function(String imgUrl, String role)? signUp,
    TResult? Function(AuthProviderType type, String? rule)? socialSignIn,
  }) {
    return socialSignIn?.call(type, rule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    TResult Function(String imgUrl, String role)? signUp,
    TResult Function(AuthProviderType type, String? rule)? socialSignIn,
    required TResult orElse(),
  }) {
    if (socialSignIn != null) {
      return socialSignIn(type, rule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) login,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SocialSignInEvent value) socialSignIn,
  }) {
    return socialSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SocialSignInEvent value)? socialSignIn,
  }) {
    return socialSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? login,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SocialSignInEvent value)? socialSignIn,
    required TResult orElse(),
  }) {
    if (socialSignIn != null) {
      return socialSignIn(this);
    }
    return orElse();
  }
}

abstract class SocialSignInEvent implements AuthEvent {
  const factory SocialSignInEvent(
      {required final AuthProviderType type,
      final String? rule}) = _$SocialSignInEventImpl;

  AuthProviderType get type;
  String? get rule;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialSignInEventImplCopyWith<_$SocialSignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userRole) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userRole)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userRole)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessStat<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessStat<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessStat<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userRole) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userRole)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userRole)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessStat<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessStat<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessStat<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AuthState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<T, $Res> {
  factory _$$LoadingStateImplCopyWith(_$LoadingStateImpl<T> value,
          $Res Function(_$LoadingStateImpl<T>) then) =
      __$$LoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoadingStateImpl<T>>
    implements _$$LoadingStateImplCopyWith<T, $Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl<T> _value, $Res Function(_$LoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl<T> implements LoadingState<T> {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userRole) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userRole)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userRole)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessStat<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessStat<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessStat<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements AuthState<T> {
  const factory LoadingState() = _$LoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$SuccessStatImplCopyWith<T, $Res> {
  factory _$$SuccessStatImplCopyWith(_$SuccessStatImpl<T> value,
          $Res Function(_$SuccessStatImpl<T>) then) =
      __$$SuccessStatImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String userRole});
}

/// @nodoc
class __$$SuccessStatImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$SuccessStatImpl<T>>
    implements _$$SuccessStatImplCopyWith<T, $Res> {
  __$$SuccessStatImplCopyWithImpl(
      _$SuccessStatImpl<T> _value, $Res Function(_$SuccessStatImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRole = null,
  }) {
    return _then(_$SuccessStatImpl<T>(
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessStatImpl<T> implements SuccessStat<T> {
  const _$SuccessStatImpl({required this.userRole});

  @override
  final String userRole;

  @override
  String toString() {
    return 'AuthState<$T>.success(userRole: $userRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStatImpl<T> &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRole);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStatImplCopyWith<T, _$SuccessStatImpl<T>> get copyWith =>
      __$$SuccessStatImplCopyWithImpl<T, _$SuccessStatImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userRole) success,
    required TResult Function(String error) failure,
  }) {
    return success(userRole);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userRole)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(userRole);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userRole)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userRole);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessStat<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessStat<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessStat<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessStat<T> implements AuthState<T> {
  const factory SuccessStat({required final String userRole}) =
      _$SuccessStatImpl<T>;

  String get userRole;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStatImplCopyWith<T, _$SuccessStatImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<T, $Res> {
  factory _$$FailureStateImplCopyWith(_$FailureStateImpl<T> value,
          $Res Function(_$FailureStateImpl<T>) then) =
      __$$FailureStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$FailureStateImpl<T>>
    implements _$$FailureStateImplCopyWith<T, $Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl<T> _value, $Res Function(_$FailureStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl<T> implements FailureState<T> {
  const _$FailureStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<T, _$FailureStateImpl<T>> get copyWith =>
      __$$FailureStateImplCopyWithImpl<T, _$FailureStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userRole) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userRole)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userRole)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessStat<T> value) success,
    required TResult Function(FailureState<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessStat<T> value)? success,
    TResult? Function(FailureState<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessStat<T> value)? success,
    TResult Function(FailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureState<T> implements AuthState<T> {
  const factory FailureState({required final String error}) =
      _$FailureStateImpl<T>;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureStateImplCopyWith<T, _$FailureStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
