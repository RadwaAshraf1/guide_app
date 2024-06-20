// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceState<T> {
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
    required TResult Function(ServiceLoading<T> value) loading,
    required TResult Function(ServiceSuccess<T> value) success,
    required TResult Function(ServiceError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ServiceLoading<T> value)? loading,
    TResult? Function(ServiceSuccess<T> value)? success,
    TResult? Function(ServiceError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ServiceLoading<T> value)? loading,
    TResult Function(ServiceSuccess<T> value)? success,
    TResult Function(ServiceError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<T, $Res> {
  factory $ServiceStateCopyWith(
          ServiceState<T> value, $Res Function(ServiceState<T>) then) =
      _$ServiceStateCopyWithImpl<T, $Res, ServiceState<T>>;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<T, $Res, $Val extends ServiceState<T>>
    implements $ServiceStateCopyWith<T, $Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

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
    extends _$ServiceStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'ServiceState<$T>.initial()';
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
    required TResult Function(ServiceLoading<T> value) loading,
    required TResult Function(ServiceSuccess<T> value) success,
    required TResult Function(ServiceError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ServiceLoading<T> value)? loading,
    TResult? Function(ServiceSuccess<T> value)? success,
    TResult? Function(ServiceError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ServiceLoading<T> value)? loading,
    TResult Function(ServiceSuccess<T> value)? success,
    TResult Function(ServiceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ServiceState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ServiceLoadingImplCopyWith<T, $Res> {
  factory _$$ServiceLoadingImplCopyWith(_$ServiceLoadingImpl<T> value,
          $Res Function(_$ServiceLoadingImpl<T>) then) =
      __$$ServiceLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ServiceLoadingImplCopyWithImpl<T, $Res>
    extends _$ServiceStateCopyWithImpl<T, $Res, _$ServiceLoadingImpl<T>>
    implements _$$ServiceLoadingImplCopyWith<T, $Res> {
  __$$ServiceLoadingImplCopyWithImpl(_$ServiceLoadingImpl<T> _value,
      $Res Function(_$ServiceLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceLoadingImpl<T> implements ServiceLoading<T> {
  const _$ServiceLoadingImpl();

  @override
  String toString() {
    return 'ServiceState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceLoadingImpl<T>);
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
    required TResult Function(ServiceLoading<T> value) loading,
    required TResult Function(ServiceSuccess<T> value) success,
    required TResult Function(ServiceError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ServiceLoading<T> value)? loading,
    TResult? Function(ServiceSuccess<T> value)? success,
    TResult? Function(ServiceError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ServiceLoading<T> value)? loading,
    TResult Function(ServiceSuccess<T> value)? success,
    TResult Function(ServiceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ServiceLoading<T> implements ServiceState<T> {
  const factory ServiceLoading() = _$ServiceLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ServiceSuccessImplCopyWith<T, $Res> {
  factory _$$ServiceSuccessImplCopyWith(_$ServiceSuccessImpl<T> value,
          $Res Function(_$ServiceSuccessImpl<T>) then) =
      __$$ServiceSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ServiceSuccessImplCopyWithImpl<T, $Res>
    extends _$ServiceStateCopyWithImpl<T, $Res, _$ServiceSuccessImpl<T>>
    implements _$$ServiceSuccessImplCopyWith<T, $Res> {
  __$$ServiceSuccessImplCopyWithImpl(_$ServiceSuccessImpl<T> _value,
      $Res Function(_$ServiceSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ServiceSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ServiceSuccessImpl<T> implements ServiceSuccess<T> {
  const _$ServiceSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ServiceState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceSuccessImplCopyWith<T, _$ServiceSuccessImpl<T>> get copyWith =>
      __$$ServiceSuccessImplCopyWithImpl<T, _$ServiceSuccessImpl<T>>(
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
    required TResult Function(ServiceLoading<T> value) loading,
    required TResult Function(ServiceSuccess<T> value) success,
    required TResult Function(ServiceError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ServiceLoading<T> value)? loading,
    TResult? Function(ServiceSuccess<T> value)? success,
    TResult? Function(ServiceError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ServiceLoading<T> value)? loading,
    TResult Function(ServiceSuccess<T> value)? success,
    TResult Function(ServiceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ServiceSuccess<T> implements ServiceState<T> {
  const factory ServiceSuccess(final T data) = _$ServiceSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ServiceSuccessImplCopyWith<T, _$ServiceSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceErrorImplCopyWith<T, $Res> {
  factory _$$ServiceErrorImplCopyWith(_$ServiceErrorImpl<T> value,
          $Res Function(_$ServiceErrorImpl<T>) then) =
      __$$ServiceErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServiceErrorImplCopyWithImpl<T, $Res>
    extends _$ServiceStateCopyWithImpl<T, $Res, _$ServiceErrorImpl<T>>
    implements _$$ServiceErrorImplCopyWith<T, $Res> {
  __$$ServiceErrorImplCopyWithImpl(
      _$ServiceErrorImpl<T> _value, $Res Function(_$ServiceErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServiceErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceErrorImpl<T> implements ServiceError<T> {
  const _$ServiceErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ServiceState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceErrorImplCopyWith<T, _$ServiceErrorImpl<T>> get copyWith =>
      __$$ServiceErrorImplCopyWithImpl<T, _$ServiceErrorImpl<T>>(
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
    required TResult Function(ServiceLoading<T> value) loading,
    required TResult Function(ServiceSuccess<T> value) success,
    required TResult Function(ServiceError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ServiceLoading<T> value)? loading,
    TResult? Function(ServiceSuccess<T> value)? success,
    TResult? Function(ServiceError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ServiceLoading<T> value)? loading,
    TResult Function(ServiceSuccess<T> value)? success,
    TResult Function(ServiceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ServiceError<T> implements ServiceState<T> {
  const factory ServiceError({required final String error}) =
      _$ServiceErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ServiceErrorImplCopyWith<T, _$ServiceErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
