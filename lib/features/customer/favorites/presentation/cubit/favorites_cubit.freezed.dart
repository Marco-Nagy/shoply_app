// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoritesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FavoritesState.initial()';
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
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
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
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddAndRemoveFavoritesStateImplCopyWith<$Res> {
  factory _$$AddAndRemoveFavoritesStateImplCopyWith(
          _$AddAndRemoveFavoritesStateImpl value,
          $Res Function(_$AddAndRemoveFavoritesStateImpl) then) =
      __$$AddAndRemoveFavoritesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddAndRemoveFavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$AddAndRemoveFavoritesStateImpl>
    implements _$$AddAndRemoveFavoritesStateImplCopyWith<$Res> {
  __$$AddAndRemoveFavoritesStateImplCopyWithImpl(
      _$AddAndRemoveFavoritesStateImpl _value,
      $Res Function(_$AddAndRemoveFavoritesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddAndRemoveFavoritesStateImpl implements AddAndRemoveFavoritesState {
  const _$AddAndRemoveFavoritesStateImpl();

  @override
  String toString() {
    return 'FavoritesState.addAndRemoveFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAndRemoveFavoritesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return addAndRemoveFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return addAndRemoveFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (addAndRemoveFavorites != null) {
      return addAndRemoveFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return addAndRemoveFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return addAndRemoveFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (addAndRemoveFavorites != null) {
      return addAndRemoveFavorites(this);
    }
    return orElse();
  }
}

abstract class AddAndRemoveFavoritesState implements FavoritesState {
  const factory AddAndRemoveFavoritesState() = _$AddAndRemoveFavoritesStateImpl;
}

/// @nodoc
abstract class _$$LoadingFavoritesStateImplCopyWith<$Res> {
  factory _$$LoadingFavoritesStateImplCopyWith(
          _$LoadingFavoritesStateImpl value,
          $Res Function(_$LoadingFavoritesStateImpl) then) =
      __$$LoadingFavoritesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadingFavoritesStateImpl>
    implements _$$LoadingFavoritesStateImplCopyWith<$Res> {
  __$$LoadingFavoritesStateImplCopyWithImpl(_$LoadingFavoritesStateImpl _value,
      $Res Function(_$LoadingFavoritesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFavoritesStateImpl implements LoadingFavoritesState {
  const _$LoadingFavoritesStateImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFavoritesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFavoritesState implements FavoritesState {
  const factory LoadingFavoritesState() = _$LoadingFavoritesStateImpl;
}

/// @nodoc
abstract class _$$ErrorFavoritesStateImplCopyWith<$Res> {
  factory _$$ErrorFavoritesStateImplCopyWith(_$ErrorFavoritesStateImpl value,
          $Res Function(_$ErrorFavoritesStateImpl) then) =
      __$$ErrorFavoritesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorFavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$ErrorFavoritesStateImpl>
    implements _$$ErrorFavoritesStateImplCopyWith<$Res> {
  __$$ErrorFavoritesStateImplCopyWithImpl(_$ErrorFavoritesStateImpl _value,
      $Res Function(_$ErrorFavoritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorFavoritesStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFavoritesStateImpl implements ErrorFavoritesState {
  const _$ErrorFavoritesStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FavoritesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFavoritesStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFavoritesStateImplCopyWith<_$ErrorFavoritesStateImpl> get copyWith =>
      __$$ErrorFavoritesStateImplCopyWithImpl<_$ErrorFavoritesStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorFavoritesState implements FavoritesState {
  const factory ErrorFavoritesState({required final String error}) =
      _$ErrorFavoritesStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorFavoritesStateImplCopyWith<_$ErrorFavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessFavoritesStateImplCopyWith<$Res> {
  factory _$$SuccessFavoritesStateImplCopyWith(
          _$SuccessFavoritesStateImpl value,
          $Res Function(_$SuccessFavoritesStateImpl) then) =
      __$$SuccessFavoritesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FavoritesEntity> favorites});
}

/// @nodoc
class __$$SuccessFavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$SuccessFavoritesStateImpl>
    implements _$$SuccessFavoritesStateImplCopyWith<$Res> {
  __$$SuccessFavoritesStateImplCopyWithImpl(_$SuccessFavoritesStateImpl _value,
      $Res Function(_$SuccessFavoritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$SuccessFavoritesStateImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritesEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessFavoritesStateImpl implements SuccessFavoritesState {
  const _$SuccessFavoritesStateImpl(
      {required final List<FavoritesEntity> favorites})
      : _favorites = favorites;

  final List<FavoritesEntity> _favorites;
  @override
  List<FavoritesEntity> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoritesState.success(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFavoritesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFavoritesStateImplCopyWith<_$SuccessFavoritesStateImpl>
      get copyWith => __$$SuccessFavoritesStateImplCopyWithImpl<
          _$SuccessFavoritesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return success(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return success?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessFavoritesState implements FavoritesState {
  const factory SuccessFavoritesState(
          {required final List<FavoritesEntity> favorites}) =
      _$SuccessFavoritesStateImpl;

  List<FavoritesEntity> get favorites;
  @JsonKey(ignore: true)
  _$$SuccessFavoritesStateImplCopyWith<_$SuccessFavoritesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFavoriteStateImplCopyWith<$Res> {
  factory _$$ChangeFavoriteStateImplCopyWith(_$ChangeFavoriteStateImpl value,
          $Res Function(_$ChangeFavoriteStateImpl) then) =
      __$$ChangeFavoriteStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$ChangeFavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$ChangeFavoriteStateImpl>
    implements _$$ChangeFavoriteStateImplCopyWith<$Res> {
  __$$ChangeFavoriteStateImplCopyWithImpl(_$ChangeFavoriteStateImpl _value,
      $Res Function(_$ChangeFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$ChangeFavoriteStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeFavoriteStateImpl implements ChangeFavoriteState {
  const _$ChangeFavoriteStateImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoritesState.changeFavoriteState(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFavoriteStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFavoriteStateImplCopyWith<_$ChangeFavoriteStateImpl> get copyWith =>
      __$$ChangeFavoriteStateImplCopyWithImpl<_$ChangeFavoriteStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addAndRemoveFavorites,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<FavoritesEntity> favorites) success,
    required TResult Function(bool isFavorite) changeFavoriteState,
  }) {
    return changeFavoriteState(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addAndRemoveFavorites,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<FavoritesEntity> favorites)? success,
    TResult? Function(bool isFavorite)? changeFavoriteState,
  }) {
    return changeFavoriteState?.call(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addAndRemoveFavorites,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<FavoritesEntity> favorites)? success,
    TResult Function(bool isFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (changeFavoriteState != null) {
      return changeFavoriteState(isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddAndRemoveFavoritesState value)
        addAndRemoveFavorites,
    required TResult Function(LoadingFavoritesState value) loading,
    required TResult Function(ErrorFavoritesState value) error,
    required TResult Function(SuccessFavoritesState value) success,
    required TResult Function(ChangeFavoriteState value) changeFavoriteState,
  }) {
    return changeFavoriteState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult? Function(LoadingFavoritesState value)? loading,
    TResult? Function(ErrorFavoritesState value)? error,
    TResult? Function(SuccessFavoritesState value)? success,
    TResult? Function(ChangeFavoriteState value)? changeFavoriteState,
  }) {
    return changeFavoriteState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddAndRemoveFavoritesState value)? addAndRemoveFavorites,
    TResult Function(LoadingFavoritesState value)? loading,
    TResult Function(ErrorFavoritesState value)? error,
    TResult Function(SuccessFavoritesState value)? success,
    TResult Function(ChangeFavoriteState value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (changeFavoriteState != null) {
      return changeFavoriteState(this);
    }
    return orElse();
  }
}

abstract class ChangeFavoriteState implements FavoritesState {
  const factory ChangeFavoriteState({required final bool isFavorite}) =
      _$ChangeFavoriteStateImpl;

  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$ChangeFavoriteStateImplCopyWith<_$ChangeFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
