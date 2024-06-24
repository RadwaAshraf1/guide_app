// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegionLoading<T> value) loading,
    required TResult Function(RegionSuccess<T> value) success,
    required TResult Function(RegionError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegionLoading<T> value)? loading,
    TResult? Function(RegionSuccess<T> value)? success,
    TResult? Function(RegionError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegionLoading<T> value)? loading,
    TResult Function(RegionSuccess<T> value)? success,
    TResult Function(RegionError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionStateCopyWith<T, $Res> {
  factory $RegionStateCopyWith(
          RegionState<T> value, $Res Function(RegionState<T>) then) =
      _$RegionStateCopyWithImpl<T, $Res, RegionState<T>>;
}

/// @nodoc
class _$RegionStateCopyWithImpl<T, $Res, $Val extends RegionState<T>>
    implements $RegionStateCopyWith<T, $Res> {
  _$RegionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$RegionStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegionState<$T>.initial()';
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
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
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
    required TResult Function(RegionLoading<T> value) loading,
    required TResult Function(RegionSuccess<T> value) success,
    required TResult Function(RegionError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegionLoading<T> value)? loading,
    TResult? Function(RegionSuccess<T> value)? success,
    TResult? Function(RegionError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegionLoading<T> value)? loading,
    TResult Function(RegionSuccess<T> value)? success,
    TResult Function(RegionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RegionState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$RegionLoadingImplCopyWith<T, $Res> {
  factory _$$RegionLoadingImplCopyWith(_$RegionLoadingImpl<T> value,
          $Res Function(_$RegionLoadingImpl<T>) then) =
      __$$RegionLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RegionLoadingImplCopyWithImpl<T, $Res>
    extends _$RegionStateCopyWithImpl<T, $Res, _$RegionLoadingImpl<T>>
    implements _$$RegionLoadingImplCopyWith<T, $Res> {
  __$$RegionLoadingImplCopyWithImpl(_$RegionLoadingImpl<T> _value,
      $Res Function(_$RegionLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegionLoadingImpl<T> implements RegionLoading<T> {
  const _$RegionLoadingImpl();

  @override
  String toString() {
    return 'RegionState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegionLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
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
    required TResult Function(RegionLoading<T> value) loading,
    required TResult Function(RegionSuccess<T> value) success,
    required TResult Function(RegionError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegionLoading<T> value)? loading,
    TResult? Function(RegionSuccess<T> value)? success,
    TResult? Function(RegionError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegionLoading<T> value)? loading,
    TResult Function(RegionSuccess<T> value)? success,
    TResult Function(RegionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegionLoading<T> implements RegionState<T> {
  const factory RegionLoading() = _$RegionLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RegionSuccessImplCopyWith<T, $Res> {
  factory _$$RegionSuccessImplCopyWith(_$RegionSuccessImpl<T> value,
          $Res Function(_$RegionSuccessImpl<T>) then) =
      __$$RegionSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RegionSuccessImplCopyWithImpl<T, $Res>
    extends _$RegionStateCopyWithImpl<T, $Res, _$RegionSuccessImpl<T>>
    implements _$$RegionSuccessImplCopyWith<T, $Res> {
  __$$RegionSuccessImplCopyWithImpl(_$RegionSuccessImpl<T> _value,
      $Res Function(_$RegionSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RegionSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RegionSuccessImpl<T> implements RegionSuccess<T> {
  const _$RegionSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'RegionState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionSuccessImplCopyWith<T, _$RegionSuccessImpl<T>> get copyWith =>
      __$$RegionSuccessImplCopyWithImpl<T, _$RegionSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegionLoading<T> value) loading,
    required TResult Function(RegionSuccess<T> value) success,
    required TResult Function(RegionError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegionLoading<T> value)? loading,
    TResult? Function(RegionSuccess<T> value)? success,
    TResult? Function(RegionError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegionLoading<T> value)? loading,
    TResult Function(RegionSuccess<T> value)? success,
    TResult Function(RegionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegionSuccess<T> implements RegionState<T> {
  const factory RegionSuccess(final T data) = _$RegionSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RegionSuccessImplCopyWith<T, _$RegionSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegionErrorImplCopyWith<T, $Res> {
  factory _$$RegionErrorImplCopyWith(_$RegionErrorImpl<T> value,
          $Res Function(_$RegionErrorImpl<T>) then) =
      __$$RegionErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RegionErrorImplCopyWithImpl<T, $Res>
    extends _$RegionStateCopyWithImpl<T, $Res, _$RegionErrorImpl<T>>
    implements _$$RegionErrorImplCopyWith<T, $Res> {
  __$$RegionErrorImplCopyWithImpl(
      _$RegionErrorImpl<T> _value, $Res Function(_$RegionErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegionErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegionErrorImpl<T> implements RegionError<T> {
  const _$RegionErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegionState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionErrorImplCopyWith<T, _$RegionErrorImpl<T>> get copyWith =>
      __$$RegionErrorImplCopyWithImpl<T, _$RegionErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegionLoading<T> value) loading,
    required TResult Function(RegionSuccess<T> value) success,
    required TResult Function(RegionError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegionLoading<T> value)? loading,
    TResult? Function(RegionSuccess<T> value)? success,
    TResult? Function(RegionError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegionLoading<T> value)? loading,
    TResult Function(RegionSuccess<T> value)? success,
    TResult Function(RegionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegionError<T> implements RegionState<T> {
  const factory RegionError({required final String error}) =
      _$RegionErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$RegionErrorImplCopyWith<T, _$RegionErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
