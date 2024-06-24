// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouteState<T> {
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
    required TResult Function(RouteLoading<T> value) loading,
    required TResult Function(RouteSuccess<T> value) success,
    required TResult Function(RouteError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RouteLoading<T> value)? loading,
    TResult? Function(RouteSuccess<T> value)? success,
    TResult? Function(RouteError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RouteLoading<T> value)? loading,
    TResult Function(RouteSuccess<T> value)? success,
    TResult Function(RouteError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStateCopyWith<T, $Res> {
  factory $RouteStateCopyWith(
          RouteState<T> value, $Res Function(RouteState<T>) then) =
      _$RouteStateCopyWithImpl<T, $Res, RouteState<T>>;
}

/// @nodoc
class _$RouteStateCopyWithImpl<T, $Res, $Val extends RouteState<T>>
    implements $RouteStateCopyWith<T, $Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

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
    extends _$RouteStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'RouteState<$T>.initial()';
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
    required TResult Function(RouteLoading<T> value) loading,
    required TResult Function(RouteSuccess<T> value) success,
    required TResult Function(RouteError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RouteLoading<T> value)? loading,
    TResult? Function(RouteSuccess<T> value)? success,
    TResult? Function(RouteError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RouteLoading<T> value)? loading,
    TResult Function(RouteSuccess<T> value)? success,
    TResult Function(RouteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RouteState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$RouteLoadingImplCopyWith<T, $Res> {
  factory _$$RouteLoadingImplCopyWith(_$RouteLoadingImpl<T> value,
          $Res Function(_$RouteLoadingImpl<T>) then) =
      __$$RouteLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RouteLoadingImplCopyWithImpl<T, $Res>
    extends _$RouteStateCopyWithImpl<T, $Res, _$RouteLoadingImpl<T>>
    implements _$$RouteLoadingImplCopyWith<T, $Res> {
  __$$RouteLoadingImplCopyWithImpl(
      _$RouteLoadingImpl<T> _value, $Res Function(_$RouteLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RouteLoadingImpl<T> implements RouteLoading<T> {
  const _$RouteLoadingImpl();

  @override
  String toString() {
    return 'RouteState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RouteLoadingImpl<T>);
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
    required TResult Function(RouteLoading<T> value) loading,
    required TResult Function(RouteSuccess<T> value) success,
    required TResult Function(RouteError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RouteLoading<T> value)? loading,
    TResult? Function(RouteSuccess<T> value)? success,
    TResult? Function(RouteError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RouteLoading<T> value)? loading,
    TResult Function(RouteSuccess<T> value)? success,
    TResult Function(RouteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RouteLoading<T> implements RouteState<T> {
  const factory RouteLoading() = _$RouteLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RouteSuccessImplCopyWith<T, $Res> {
  factory _$$RouteSuccessImplCopyWith(_$RouteSuccessImpl<T> value,
          $Res Function(_$RouteSuccessImpl<T>) then) =
      __$$RouteSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RouteSuccessImplCopyWithImpl<T, $Res>
    extends _$RouteStateCopyWithImpl<T, $Res, _$RouteSuccessImpl<T>>
    implements _$$RouteSuccessImplCopyWith<T, $Res> {
  __$$RouteSuccessImplCopyWithImpl(
      _$RouteSuccessImpl<T> _value, $Res Function(_$RouteSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RouteSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RouteSuccessImpl<T> implements RouteSuccess<T> {
  const _$RouteSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'RouteState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSuccessImplCopyWith<T, _$RouteSuccessImpl<T>> get copyWith =>
      __$$RouteSuccessImplCopyWithImpl<T, _$RouteSuccessImpl<T>>(
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
    required TResult Function(RouteLoading<T> value) loading,
    required TResult Function(RouteSuccess<T> value) success,
    required TResult Function(RouteError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RouteLoading<T> value)? loading,
    TResult? Function(RouteSuccess<T> value)? success,
    TResult? Function(RouteError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RouteLoading<T> value)? loading,
    TResult Function(RouteSuccess<T> value)? success,
    TResult Function(RouteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RouteSuccess<T> implements RouteState<T> {
  const factory RouteSuccess(final T data) = _$RouteSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RouteSuccessImplCopyWith<T, _$RouteSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteErrorImplCopyWith<T, $Res> {
  factory _$$RouteErrorImplCopyWith(
          _$RouteErrorImpl<T> value, $Res Function(_$RouteErrorImpl<T>) then) =
      __$$RouteErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RouteErrorImplCopyWithImpl<T, $Res>
    extends _$RouteStateCopyWithImpl<T, $Res, _$RouteErrorImpl<T>>
    implements _$$RouteErrorImplCopyWith<T, $Res> {
  __$$RouteErrorImplCopyWithImpl(
      _$RouteErrorImpl<T> _value, $Res Function(_$RouteErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RouteErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteErrorImpl<T> implements RouteError<T> {
  const _$RouteErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RouteState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteErrorImplCopyWith<T, _$RouteErrorImpl<T>> get copyWith =>
      __$$RouteErrorImplCopyWithImpl<T, _$RouteErrorImpl<T>>(this, _$identity);

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
    required TResult Function(RouteLoading<T> value) loading,
    required TResult Function(RouteSuccess<T> value) success,
    required TResult Function(RouteError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RouteLoading<T> value)? loading,
    TResult? Function(RouteSuccess<T> value)? success,
    TResult? Function(RouteError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RouteLoading<T> value)? loading,
    TResult Function(RouteSuccess<T> value)? success,
    TResult Function(RouteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RouteError<T> implements RouteState<T> {
  const factory RouteError({required final String error}) = _$RouteErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$RouteErrorImplCopyWith<T, _$RouteErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
