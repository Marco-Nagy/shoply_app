// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserInfo,
    required TResult Function(UserProfile profile) updateUserInfo,
    required TResult Function() changeUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserInfo,
    TResult? Function(UserProfile profile)? updateUserInfo,
    TResult? Function()? changeUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserInfo,
    TResult Function(UserProfile profile)? updateUserInfo,
    TResult Function()? changeUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserInfoEvent value) updateUserInfo,
    required TResult Function(ChangeUserRoleEvent value) changeUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult? Function(ChangeUserRoleEvent value)? changeUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult Function(ChangeUserRoleEvent value)? changeUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
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
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProfileEvent.started()';
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
    required TResult Function() getUserInfo,
    required TResult Function(UserProfile profile) updateUserInfo,
    required TResult Function() changeUserRole,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserInfo,
    TResult? Function(UserProfile profile)? updateUserInfo,
    TResult? Function()? changeUserRole,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserInfo,
    TResult Function(UserProfile profile)? updateUserInfo,
    TResult Function()? changeUserRole,
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
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserInfoEvent value) updateUserInfo,
    required TResult Function(ChangeUserRoleEvent value) changeUserRole,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult? Function(ChangeUserRoleEvent value)? changeUserRole,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult Function(ChangeUserRoleEvent value)? changeUserRole,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetUserInfoEventImplCopyWith<$Res> {
  factory _$$GetUserInfoEventImplCopyWith(_$GetUserInfoEventImpl value,
          $Res Function(_$GetUserInfoEventImpl) then) =
      __$$GetUserInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserInfoEventImpl>
    implements _$$GetUserInfoEventImplCopyWith<$Res> {
  __$$GetUserInfoEventImplCopyWithImpl(_$GetUserInfoEventImpl _value,
      $Res Function(_$GetUserInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserInfoEventImpl implements GetUserInfoEvent {
  const _$GetUserInfoEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserInfo,
    required TResult Function(UserProfile profile) updateUserInfo,
    required TResult Function() changeUserRole,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserInfo,
    TResult? Function(UserProfile profile)? updateUserInfo,
    TResult? Function()? changeUserRole,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserInfo,
    TResult Function(UserProfile profile)? updateUserInfo,
    TResult Function()? changeUserRole,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserInfoEvent value) updateUserInfo,
    required TResult Function(ChangeUserRoleEvent value) changeUserRole,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult? Function(ChangeUserRoleEvent value)? changeUserRole,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult Function(ChangeUserRoleEvent value)? changeUserRole,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfoEvent implements ProfileEvent {
  const factory GetUserInfoEvent() = _$GetUserInfoEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserInfoEventImplCopyWith<$Res> {
  factory _$$UpdateUserInfoEventImplCopyWith(_$UpdateUserInfoEventImpl value,
          $Res Function(_$UpdateUserInfoEventImpl) then) =
      __$$UpdateUserInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile profile});
}

/// @nodoc
class __$$UpdateUserInfoEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserInfoEventImpl>
    implements _$$UpdateUserInfoEventImplCopyWith<$Res> {
  __$$UpdateUserInfoEventImplCopyWithImpl(_$UpdateUserInfoEventImpl _value,
      $Res Function(_$UpdateUserInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$UpdateUserInfoEventImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$UpdateUserInfoEventImpl implements UpdateUserInfoEvent {
  const _$UpdateUserInfoEventImpl(this.profile);

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'ProfileEvent.updateUserInfo(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoEventImplCopyWith<_$UpdateUserInfoEventImpl> get copyWith =>
      __$$UpdateUserInfoEventImplCopyWithImpl<_$UpdateUserInfoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserInfo,
    required TResult Function(UserProfile profile) updateUserInfo,
    required TResult Function() changeUserRole,
  }) {
    return updateUserInfo(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserInfo,
    TResult? Function(UserProfile profile)? updateUserInfo,
    TResult? Function()? changeUserRole,
  }) {
    return updateUserInfo?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserInfo,
    TResult Function(UserProfile profile)? updateUserInfo,
    TResult Function()? changeUserRole,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserInfoEvent value) updateUserInfo,
    required TResult Function(ChangeUserRoleEvent value) changeUserRole,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult? Function(ChangeUserRoleEvent value)? changeUserRole,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult Function(ChangeUserRoleEvent value)? changeUserRole,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class UpdateUserInfoEvent implements ProfileEvent {
  const factory UpdateUserInfoEvent(final UserProfile profile) =
      _$UpdateUserInfoEventImpl;

  UserProfile get profile;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserInfoEventImplCopyWith<_$UpdateUserInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUserRoleEventImplCopyWith<$Res> {
  factory _$$ChangeUserRoleEventImplCopyWith(_$ChangeUserRoleEventImpl value,
          $Res Function(_$ChangeUserRoleEventImpl) then) =
      __$$ChangeUserRoleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeUserRoleEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangeUserRoleEventImpl>
    implements _$$ChangeUserRoleEventImplCopyWith<$Res> {
  __$$ChangeUserRoleEventImplCopyWithImpl(_$ChangeUserRoleEventImpl _value,
      $Res Function(_$ChangeUserRoleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeUserRoleEventImpl implements ChangeUserRoleEvent {
  const _$ChangeUserRoleEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.changeUserRole()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserRoleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUserInfo,
    required TResult Function(UserProfile profile) updateUserInfo,
    required TResult Function() changeUserRole,
  }) {
    return changeUserRole();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUserInfo,
    TResult? Function(UserProfile profile)? updateUserInfo,
    TResult? Function()? changeUserRole,
  }) {
    return changeUserRole?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUserInfo,
    TResult Function(UserProfile profile)? updateUserInfo,
    TResult Function()? changeUserRole,
    required TResult orElse(),
  }) {
    if (changeUserRole != null) {
      return changeUserRole();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUserInfoEvent value) getUserInfo,
    required TResult Function(UpdateUserInfoEvent value) updateUserInfo,
    required TResult Function(ChangeUserRoleEvent value) changeUserRole,
  }) {
    return changeUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUserInfoEvent value)? getUserInfo,
    TResult? Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult? Function(ChangeUserRoleEvent value)? changeUserRole,
  }) {
    return changeUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUserInfoEvent value)? getUserInfo,
    TResult Function(UpdateUserInfoEvent value)? updateUserInfo,
    TResult Function(ChangeUserRoleEvent value)? changeUserRole,
    required TResult orElse(),
  }) {
    if (changeUserRole != null) {
      return changeUserRole(this);
    }
    return orElse();
  }
}

abstract class ChangeUserRoleEvent implements ProfileEvent {
  const factory ChangeUserRoleEvent() = _$ChangeUserRoleEventImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserProfile userInfo) success,
    required TResult Function(String errorMessage) error,
    required TResult Function(String role) role,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserProfile userInfo)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String role)? role,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserProfile userInfo)? success,
    TResult Function(String errorMessage)? error,
    TResult Function(String role)? role,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStae value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(RoleState value) role,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingStae value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(RoleState value)? role,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStae value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(RoleState value)? role,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingStaeImplCopyWith<$Res> {
  factory _$$LoadingStaeImplCopyWith(
          _$LoadingStaeImpl value, $Res Function(_$LoadingStaeImpl) then) =
      __$$LoadingStaeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStaeImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingStaeImpl>
    implements _$$LoadingStaeImplCopyWith<$Res> {
  __$$LoadingStaeImplCopyWithImpl(
      _$LoadingStaeImpl _value, $Res Function(_$LoadingStaeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStaeImpl implements LoadingStae {
  const _$LoadingStaeImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStaeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserProfile userInfo) success,
    required TResult Function(String errorMessage) error,
    required TResult Function(String role) role,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserProfile userInfo)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String role)? role,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserProfile userInfo)? success,
    TResult Function(String errorMessage)? error,
    TResult Function(String role)? role,
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
    required TResult Function(LoadingStae value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(RoleState value) role,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingStae value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(RoleState value)? role,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStae value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(RoleState value)? role,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStae implements ProfileState {
  const factory LoadingStae() = _$LoadingStaeImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile userInfo});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$SuccessStateImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl({required this.userInfo});

  @override
  final UserProfile userInfo;

  @override
  String toString() {
    return 'ProfileState.success(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserProfile userInfo) success,
    required TResult Function(String errorMessage) error,
    required TResult Function(String role) role,
  }) {
    return success(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserProfile userInfo)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String role)? role,
  }) {
    return success?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserProfile userInfo)? success,
    TResult Function(String errorMessage)? error,
    TResult Function(String role)? role,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStae value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(RoleState value) role,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingStae value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(RoleState value)? role,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStae value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(RoleState value)? role,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements ProfileState {
  const factory SuccessState({required final UserProfile userInfo}) =
      _$SuccessStateImpl;

  UserProfile get userInfo;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserProfile userInfo) success,
    required TResult Function(String errorMessage) error,
    required TResult Function(String role) role,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserProfile userInfo)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String role)? role,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserProfile userInfo)? success,
    TResult Function(String errorMessage)? error,
    TResult Function(String role)? role,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStae value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(RoleState value) role,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingStae value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(RoleState value)? role,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStae value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(RoleState value)? role,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ProfileState {
  const factory ErrorState(final String errorMessage) = _$ErrorStateImpl;

  String get errorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoleStateImplCopyWith<$Res> {
  factory _$$RoleStateImplCopyWith(
          _$RoleStateImpl value, $Res Function(_$RoleStateImpl) then) =
      __$$RoleStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$$RoleStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$RoleStateImpl>
    implements _$$RoleStateImplCopyWith<$Res> {
  __$$RoleStateImplCopyWithImpl(
      _$RoleStateImpl _value, $Res Function(_$RoleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$RoleStateImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleStateImpl implements RoleState {
  const _$RoleStateImpl(this.role);

  @override
  final String role;

  @override
  String toString() {
    return 'ProfileState.role(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleStateImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleStateImplCopyWith<_$RoleStateImpl> get copyWith =>
      __$$RoleStateImplCopyWithImpl<_$RoleStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserProfile userInfo) success,
    required TResult Function(String errorMessage) error,
    required TResult Function(String role) role,
  }) {
    return role(this.role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserProfile userInfo)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String role)? role,
  }) {
    return role?.call(this.role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserProfile userInfo)? success,
    TResult Function(String errorMessage)? error,
    TResult Function(String role)? role,
    required TResult orElse(),
  }) {
    if (role != null) {
      return role(this.role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStae value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
    required TResult Function(RoleState value) role,
  }) {
    return role(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingStae value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
    TResult? Function(RoleState value)? role,
  }) {
    return role?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStae value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    TResult Function(RoleState value)? role,
    required TResult orElse(),
  }) {
    if (role != null) {
      return role(this);
    }
    return orElse();
  }
}

abstract class RoleState implements ProfileState {
  const factory RoleState(final String role) = _$RoleStateImpl;

  String get role;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleStateImplCopyWith<_$RoleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
