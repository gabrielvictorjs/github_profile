// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommonStateTearOff {
  const _$CommonStateTearOff();

  CommonStateInitial<F, S> initial<F, S>() {
    return CommonStateInitial<F, S>();
  }

  CommonStateLoadInProgress<F, S> loadInProgress<F, S>() {
    return CommonStateLoadInProgress<F, S>();
  }

  CommonStateLoadSuccess<F, S> loadSuccess<F, S>(S data) {
    return CommonStateLoadSuccess<F, S>(
      data,
    );
  }

  CommonStateLoadFailure<F, S> loadFailure<F, S>(F failure) {
    return CommonStateLoadFailure<F, S>(
      failure,
    );
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState<F, S> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<F, S, $Res> {
  factory $CommonStateCopyWith(
          CommonState<F, S> value, $Res Function(CommonState<F, S>) then) =
      _$CommonStateCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateCopyWith<F, S, $Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState<F, S> _value;
  // ignore: unused_field
  final $Res Function(CommonState<F, S>) _then;
}

/// @nodoc
abstract class $CommonStateInitialCopyWith<F, S, $Res> {
  factory $CommonStateInitialCopyWith(CommonStateInitial<F, S> value,
          $Res Function(CommonStateInitial<F, S>) then) =
      _$CommonStateInitialCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateInitialCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateInitialCopyWith<F, S, $Res> {
  _$CommonStateInitialCopyWithImpl(CommonStateInitial<F, S> _value,
      $Res Function(CommonStateInitial<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateInitial<F, S>));

  @override
  CommonStateInitial<F, S> get _value =>
      super._value as CommonStateInitial<F, S>;
}

/// @nodoc

class _$CommonStateInitial<F, S> implements CommonStateInitial<F, S> {
  const _$CommonStateInitial();

  @override
  String toString() {
    return 'CommonState<$F, $S>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonStateInitial<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
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
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommonStateInitial<F, S> implements CommonState<F, S> {
  const factory CommonStateInitial() = _$CommonStateInitial<F, S>;
}

/// @nodoc
abstract class $CommonStateLoadInProgressCopyWith<F, S, $Res> {
  factory $CommonStateLoadInProgressCopyWith(
          CommonStateLoadInProgress<F, S> value,
          $Res Function(CommonStateLoadInProgress<F, S>) then) =
      _$CommonStateLoadInProgressCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateLoadInProgressCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateLoadInProgressCopyWith<F, S, $Res> {
  _$CommonStateLoadInProgressCopyWithImpl(
      CommonStateLoadInProgress<F, S> _value,
      $Res Function(CommonStateLoadInProgress<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateLoadInProgress<F, S>));

  @override
  CommonStateLoadInProgress<F, S> get _value =>
      super._value as CommonStateLoadInProgress<F, S>;
}

/// @nodoc

class _$CommonStateLoadInProgress<F, S>
    implements CommonStateLoadInProgress<F, S> {
  const _$CommonStateLoadInProgress();

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonStateLoadInProgress<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadInProgress<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadInProgress() = _$CommonStateLoadInProgress<F, S>;
}

/// @nodoc
abstract class $CommonStateLoadSuccessCopyWith<F, S, $Res> {
  factory $CommonStateLoadSuccessCopyWith(CommonStateLoadSuccess<F, S> value,
          $Res Function(CommonStateLoadSuccess<F, S>) then) =
      _$CommonStateLoadSuccessCopyWithImpl<F, S, $Res>;
  $Res call({S data});
}

/// @nodoc
class _$CommonStateLoadSuccessCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateLoadSuccessCopyWith<F, S, $Res> {
  _$CommonStateLoadSuccessCopyWithImpl(CommonStateLoadSuccess<F, S> _value,
      $Res Function(CommonStateLoadSuccess<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateLoadSuccess<F, S>));

  @override
  CommonStateLoadSuccess<F, S> get _value =>
      super._value as CommonStateLoadSuccess<F, S>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CommonStateLoadSuccess<F, S>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$CommonStateLoadSuccess<F, S> implements CommonStateLoadSuccess<F, S> {
  const _$CommonStateLoadSuccess(this.data);

  @override
  final S data;

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateLoadSuccess<F, S> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $CommonStateLoadSuccessCopyWith<F, S, CommonStateLoadSuccess<F, S>>
      get copyWith => _$CommonStateLoadSuccessCopyWithImpl<F, S,
          CommonStateLoadSuccess<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadSuccess<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadSuccess(S data) = _$CommonStateLoadSuccess<F, S>;

  S get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateLoadSuccessCopyWith<F, S, CommonStateLoadSuccess<F, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateLoadFailureCopyWith<F, S, $Res> {
  factory $CommonStateLoadFailureCopyWith(CommonStateLoadFailure<F, S> value,
          $Res Function(CommonStateLoadFailure<F, S>) then) =
      _$CommonStateLoadFailureCopyWithImpl<F, S, $Res>;
  $Res call({F failure});
}

/// @nodoc
class _$CommonStateLoadFailureCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateLoadFailureCopyWith<F, S, $Res> {
  _$CommonStateLoadFailureCopyWithImpl(CommonStateLoadFailure<F, S> _value,
      $Res Function(CommonStateLoadFailure<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateLoadFailure<F, S>));

  @override
  CommonStateLoadFailure<F, S> get _value =>
      super._value as CommonStateLoadFailure<F, S>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(CommonStateLoadFailure<F, S>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$CommonStateLoadFailure<F, S> implements CommonStateLoadFailure<F, S> {
  const _$CommonStateLoadFailure(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateLoadFailure<F, S> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $CommonStateLoadFailureCopyWith<F, S, CommonStateLoadFailure<F, S>>
      get copyWith => _$CommonStateLoadFailureCopyWithImpl<F, S,
          CommonStateLoadFailure<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadFailure<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadFailure(F failure) =
      _$CommonStateLoadFailure<F, S>;

  F get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateLoadFailureCopyWith<F, S, CommonStateLoadFailure<F, S>>
      get copyWith => throw _privateConstructorUsedError;
}
