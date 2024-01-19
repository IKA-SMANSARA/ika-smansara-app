// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? grossAmount, String? orderId, String? campaignId)
        fetchData,
    required TResult Function(
            String? grossAmount,
            String? orderId,
            String? campaignId,
            String? statusPayment,
            String? campaignName,
            String? campaignImage)
        saveTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_SaveTransactionData value) saveTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_SaveTransactionData value)? saveTransactionData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_SaveTransactionData value)? saveTransactionData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

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
    extends _$TransactionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TransactionEvent.started()';
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
            String? grossAmount, String? orderId, String? campaignId)
        fetchData,
    required TResult Function(
            String? grossAmount,
            String? orderId,
            String? campaignId,
            String? statusPayment,
            String? campaignName,
            String? campaignImage)
        saveTransactionData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
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
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_SaveTransactionData value) saveTransactionData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_SaveTransactionData value)? saveTransactionData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_SaveTransactionData value)? saveTransactionData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? grossAmount, String? orderId, String? campaignId});
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossAmount = freezed,
    Object? orderId = freezed,
    Object? campaignId = freezed,
  }) {
    return _then(_$FetchDataImpl(
      freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl(this.grossAmount, this.orderId, this.campaignId);

  @override
  final String? grossAmount;
  @override
  final String? orderId;
  @override
  final String? campaignId;

  @override
  String toString() {
    return 'TransactionEvent.fetchData(grossAmount: $grossAmount, orderId: $orderId, campaignId: $campaignId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataImpl &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, grossAmount, orderId, campaignId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      __$$FetchDataImplCopyWithImpl<_$FetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? grossAmount, String? orderId, String? campaignId)
        fetchData,
    required TResult Function(
            String? grossAmount,
            String? orderId,
            String? campaignId,
            String? statusPayment,
            String? campaignName,
            String? campaignImage)
        saveTransactionData,
  }) {
    return fetchData(grossAmount, orderId, campaignId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
  }) {
    return fetchData?.call(grossAmount, orderId, campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(grossAmount, orderId, campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_SaveTransactionData value) saveTransactionData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_SaveTransactionData value)? saveTransactionData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_SaveTransactionData value)? saveTransactionData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements TransactionEvent {
  const factory _FetchData(final String? grossAmount, final String? orderId,
      final String? campaignId) = _$FetchDataImpl;

  String? get grossAmount;
  String? get orderId;
  String? get campaignId;
  @JsonKey(ignore: true)
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveTransactionDataImplCopyWith<$Res> {
  factory _$$SaveTransactionDataImplCopyWith(_$SaveTransactionDataImpl value,
          $Res Function(_$SaveTransactionDataImpl) then) =
      __$$SaveTransactionDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? grossAmount,
      String? orderId,
      String? campaignId,
      String? statusPayment,
      String? campaignName,
      String? campaignImage});
}

/// @nodoc
class __$$SaveTransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$SaveTransactionDataImpl>
    implements _$$SaveTransactionDataImplCopyWith<$Res> {
  __$$SaveTransactionDataImplCopyWithImpl(_$SaveTransactionDataImpl _value,
      $Res Function(_$SaveTransactionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossAmount = freezed,
    Object? orderId = freezed,
    Object? campaignId = freezed,
    Object? statusPayment = freezed,
    Object? campaignName = freezed,
    Object? campaignImage = freezed,
  }) {
    return _then(_$SaveTransactionDataImpl(
      freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusPayment
          ? _value.statusPayment
          : statusPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == campaignImage
          ? _value.campaignImage
          : campaignImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SaveTransactionDataImpl implements _SaveTransactionData {
  const _$SaveTransactionDataImpl(
      this.grossAmount,
      this.orderId,
      this.campaignId,
      this.statusPayment,
      this.campaignName,
      this.campaignImage);

  @override
  final String? grossAmount;
  @override
  final String? orderId;
  @override
  final String? campaignId;
  @override
  final String? statusPayment;
  @override
  final String? campaignName;
  @override
  final String? campaignImage;

  @override
  String toString() {
    return 'TransactionEvent.saveTransactionData(grossAmount: $grossAmount, orderId: $orderId, campaignId: $campaignId, statusPayment: $statusPayment, campaignName: $campaignName, campaignImage: $campaignImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTransactionDataImpl &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.statusPayment, statusPayment) ||
                other.statusPayment == statusPayment) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignImage, campaignImage) ||
                other.campaignImage == campaignImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grossAmount, orderId, campaignId,
      statusPayment, campaignName, campaignImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTransactionDataImplCopyWith<_$SaveTransactionDataImpl> get copyWith =>
      __$$SaveTransactionDataImplCopyWithImpl<_$SaveTransactionDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? grossAmount, String? orderId, String? campaignId)
        fetchData,
    required TResult Function(
            String? grossAmount,
            String? orderId,
            String? campaignId,
            String? statusPayment,
            String? campaignName,
            String? campaignImage)
        saveTransactionData,
  }) {
    return saveTransactionData(grossAmount, orderId, campaignId, statusPayment,
        campaignName, campaignImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult? Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
  }) {
    return saveTransactionData?.call(grossAmount, orderId, campaignId,
        statusPayment, campaignName, campaignImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? grossAmount, String? orderId, String? campaignId)?
        fetchData,
    TResult Function(String? grossAmount, String? orderId, String? campaignId,
            String? statusPayment, String? campaignName, String? campaignImage)?
        saveTransactionData,
    required TResult orElse(),
  }) {
    if (saveTransactionData != null) {
      return saveTransactionData(grossAmount, orderId, campaignId,
          statusPayment, campaignName, campaignImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_SaveTransactionData value) saveTransactionData,
  }) {
    return saveTransactionData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_SaveTransactionData value)? saveTransactionData,
  }) {
    return saveTransactionData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_SaveTransactionData value)? saveTransactionData,
    required TResult orElse(),
  }) {
    if (saveTransactionData != null) {
      return saveTransactionData(this);
    }
    return orElse();
  }
}

abstract class _SaveTransactionData implements TransactionEvent {
  const factory _SaveTransactionData(
      final String? grossAmount,
      final String? orderId,
      final String? campaignId,
      final String? statusPayment,
      final String? campaignName,
      final String? campaignImage) = _$SaveTransactionDataImpl;

  String? get grossAmount;
  String? get orderId;
  String? get campaignId;
  String? get statusPayment;
  String? get campaignName;
  String? get campaignImage;
  @JsonKey(ignore: true)
  _$$SaveTransactionDataImplCopyWith<_$SaveTransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(String? redirectUrl) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(String? redirectUrl)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(String? redirectUrl)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

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
    extends _$TransactionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TransactionState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(String? redirectUrl) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(String? redirectUrl)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(String? redirectUrl)? success,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransactionState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(String? redirectUrl) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(String? redirectUrl)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(String? redirectUrl)? success,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TransactionState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TransactionState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(String? redirectUrl) success,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(String? redirectUrl)? success,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(String? redirectUrl)? success,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TransactionState {
  const factory Error(final String? errorMessage) = _$ErrorImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? redirectUrl});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
  }) {
    return _then(_$SuccessImpl(
      freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.redirectUrl);

  @override
  final String? redirectUrl;

  @override
  String toString() {
    return 'TransactionState.success(redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(String? redirectUrl) success,
  }) {
    return success(redirectUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(String? redirectUrl)? success,
  }) {
    return success?.call(redirectUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(String? redirectUrl)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(redirectUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements TransactionState {
  const factory Success(final String? redirectUrl) = _$SuccessImpl;

  String? get redirectUrl;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
