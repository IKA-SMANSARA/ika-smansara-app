// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_donations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyDonationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchData value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDonationsEventCopyWith<$Res> {
  factory $MyDonationsEventCopyWith(
          MyDonationsEvent value, $Res Function(MyDonationsEvent) then) =
      _$MyDonationsEventCopyWithImpl<$Res, MyDonationsEvent>;
}

/// @nodoc
class _$MyDonationsEventCopyWithImpl<$Res, $Val extends MyDonationsEvent>
    implements $MyDonationsEventCopyWith<$Res> {
  _$MyDonationsEventCopyWithImpl(this._value, this._then);

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
    extends _$MyDonationsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MyDonationsEvent.started()';
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
    required TResult Function() fetchData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MyDonationsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$MyDonationsEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl();

  @override
  String toString() {
    return 'MyDonationsEvent.fetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchData value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchData value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements MyDonationsEvent {
  const factory _FetchData() = _$FetchDataImpl;
}

/// @nodoc
mixin _$MyDonationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMyDonations,
    required TResult Function(List<TransactionDocumentResponse>? listDonation)
        successMyDonations,
    required TResult Function(String? errorMessage) errorMyDonations,
    required TResult Function() loadingMyDOnations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMyDonations,
    TResult? Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult? Function(String? errorMessage)? errorMyDonations,
    TResult? Function()? loadingMyDOnations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMyDonations,
    TResult Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult Function(String? errorMessage)? errorMyDonations,
    TResult Function()? loadingMyDOnations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMyDonations value) initialMyDonations,
    required TResult Function(SuccessMyDonations value) successMyDonations,
    required TResult Function(ErrorMyDonation value) errorMyDonations,
    required TResult Function(LoadingMyDonations value) loadingMyDOnations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMyDonations value)? initialMyDonations,
    TResult? Function(SuccessMyDonations value)? successMyDonations,
    TResult? Function(ErrorMyDonation value)? errorMyDonations,
    TResult? Function(LoadingMyDonations value)? loadingMyDOnations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMyDonations value)? initialMyDonations,
    TResult Function(SuccessMyDonations value)? successMyDonations,
    TResult Function(ErrorMyDonation value)? errorMyDonations,
    TResult Function(LoadingMyDonations value)? loadingMyDOnations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDonationsStateCopyWith<$Res> {
  factory $MyDonationsStateCopyWith(
          MyDonationsState value, $Res Function(MyDonationsState) then) =
      _$MyDonationsStateCopyWithImpl<$Res, MyDonationsState>;
}

/// @nodoc
class _$MyDonationsStateCopyWithImpl<$Res, $Val extends MyDonationsState>
    implements $MyDonationsStateCopyWith<$Res> {
  _$MyDonationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialMyDonationsImplCopyWith<$Res> {
  factory _$$InitialMyDonationsImplCopyWith(_$InitialMyDonationsImpl value,
          $Res Function(_$InitialMyDonationsImpl) then) =
      __$$InitialMyDonationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMyDonationsImplCopyWithImpl<$Res>
    extends _$MyDonationsStateCopyWithImpl<$Res, _$InitialMyDonationsImpl>
    implements _$$InitialMyDonationsImplCopyWith<$Res> {
  __$$InitialMyDonationsImplCopyWithImpl(_$InitialMyDonationsImpl _value,
      $Res Function(_$InitialMyDonationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialMyDonationsImpl implements InitialMyDonations {
  const _$InitialMyDonationsImpl();

  @override
  String toString() {
    return 'MyDonationsState.initialMyDonations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialMyDonationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMyDonations,
    required TResult Function(List<TransactionDocumentResponse>? listDonation)
        successMyDonations,
    required TResult Function(String? errorMessage) errorMyDonations,
    required TResult Function() loadingMyDOnations,
  }) {
    return initialMyDonations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMyDonations,
    TResult? Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult? Function(String? errorMessage)? errorMyDonations,
    TResult? Function()? loadingMyDOnations,
  }) {
    return initialMyDonations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMyDonations,
    TResult Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult Function(String? errorMessage)? errorMyDonations,
    TResult Function()? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (initialMyDonations != null) {
      return initialMyDonations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMyDonations value) initialMyDonations,
    required TResult Function(SuccessMyDonations value) successMyDonations,
    required TResult Function(ErrorMyDonation value) errorMyDonations,
    required TResult Function(LoadingMyDonations value) loadingMyDOnations,
  }) {
    return initialMyDonations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMyDonations value)? initialMyDonations,
    TResult? Function(SuccessMyDonations value)? successMyDonations,
    TResult? Function(ErrorMyDonation value)? errorMyDonations,
    TResult? Function(LoadingMyDonations value)? loadingMyDOnations,
  }) {
    return initialMyDonations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMyDonations value)? initialMyDonations,
    TResult Function(SuccessMyDonations value)? successMyDonations,
    TResult Function(ErrorMyDonation value)? errorMyDonations,
    TResult Function(LoadingMyDonations value)? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (initialMyDonations != null) {
      return initialMyDonations(this);
    }
    return orElse();
  }
}

abstract class InitialMyDonations implements MyDonationsState {
  const factory InitialMyDonations() = _$InitialMyDonationsImpl;
}

/// @nodoc
abstract class _$$SuccessMyDonationsImplCopyWith<$Res> {
  factory _$$SuccessMyDonationsImplCopyWith(_$SuccessMyDonationsImpl value,
          $Res Function(_$SuccessMyDonationsImpl) then) =
      __$$SuccessMyDonationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionDocumentResponse>? listDonation});
}

/// @nodoc
class __$$SuccessMyDonationsImplCopyWithImpl<$Res>
    extends _$MyDonationsStateCopyWithImpl<$Res, _$SuccessMyDonationsImpl>
    implements _$$SuccessMyDonationsImplCopyWith<$Res> {
  __$$SuccessMyDonationsImplCopyWithImpl(_$SuccessMyDonationsImpl _value,
      $Res Function(_$SuccessMyDonationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listDonation = freezed,
  }) {
    return _then(_$SuccessMyDonationsImpl(
      listDonation: freezed == listDonation
          ? _value._listDonation
          : listDonation // ignore: cast_nullable_to_non_nullable
              as List<TransactionDocumentResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessMyDonationsImpl implements SuccessMyDonations {
  const _$SuccessMyDonationsImpl(
      {final List<TransactionDocumentResponse>? listDonation = const []})
      : _listDonation = listDonation;

  final List<TransactionDocumentResponse>? _listDonation;
  @override
  @JsonKey()
  List<TransactionDocumentResponse>? get listDonation {
    final value = _listDonation;
    if (value == null) return null;
    if (_listDonation is EqualUnmodifiableListView) return _listDonation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyDonationsState.successMyDonations(listDonation: $listDonation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMyDonationsImpl &&
            const DeepCollectionEquality()
                .equals(other._listDonation, _listDonation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listDonation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMyDonationsImplCopyWith<_$SuccessMyDonationsImpl> get copyWith =>
      __$$SuccessMyDonationsImplCopyWithImpl<_$SuccessMyDonationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMyDonations,
    required TResult Function(List<TransactionDocumentResponse>? listDonation)
        successMyDonations,
    required TResult Function(String? errorMessage) errorMyDonations,
    required TResult Function() loadingMyDOnations,
  }) {
    return successMyDonations(listDonation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMyDonations,
    TResult? Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult? Function(String? errorMessage)? errorMyDonations,
    TResult? Function()? loadingMyDOnations,
  }) {
    return successMyDonations?.call(listDonation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMyDonations,
    TResult Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult Function(String? errorMessage)? errorMyDonations,
    TResult Function()? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (successMyDonations != null) {
      return successMyDonations(listDonation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMyDonations value) initialMyDonations,
    required TResult Function(SuccessMyDonations value) successMyDonations,
    required TResult Function(ErrorMyDonation value) errorMyDonations,
    required TResult Function(LoadingMyDonations value) loadingMyDOnations,
  }) {
    return successMyDonations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMyDonations value)? initialMyDonations,
    TResult? Function(SuccessMyDonations value)? successMyDonations,
    TResult? Function(ErrorMyDonation value)? errorMyDonations,
    TResult? Function(LoadingMyDonations value)? loadingMyDOnations,
  }) {
    return successMyDonations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMyDonations value)? initialMyDonations,
    TResult Function(SuccessMyDonations value)? successMyDonations,
    TResult Function(ErrorMyDonation value)? errorMyDonations,
    TResult Function(LoadingMyDonations value)? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (successMyDonations != null) {
      return successMyDonations(this);
    }
    return orElse();
  }
}

abstract class SuccessMyDonations implements MyDonationsState {
  const factory SuccessMyDonations(
          {final List<TransactionDocumentResponse>? listDonation}) =
      _$SuccessMyDonationsImpl;

  List<TransactionDocumentResponse>? get listDonation;
  @JsonKey(ignore: true)
  _$$SuccessMyDonationsImplCopyWith<_$SuccessMyDonationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMyDonationImplCopyWith<$Res> {
  factory _$$ErrorMyDonationImplCopyWith(_$ErrorMyDonationImpl value,
          $Res Function(_$ErrorMyDonationImpl) then) =
      __$$ErrorMyDonationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorMyDonationImplCopyWithImpl<$Res>
    extends _$MyDonationsStateCopyWithImpl<$Res, _$ErrorMyDonationImpl>
    implements _$$ErrorMyDonationImplCopyWith<$Res> {
  __$$ErrorMyDonationImplCopyWithImpl(
      _$ErrorMyDonationImpl _value, $Res Function(_$ErrorMyDonationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorMyDonationImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorMyDonationImpl implements ErrorMyDonation {
  const _$ErrorMyDonationImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MyDonationsState.errorMyDonations(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMyDonationImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMyDonationImplCopyWith<_$ErrorMyDonationImpl> get copyWith =>
      __$$ErrorMyDonationImplCopyWithImpl<_$ErrorMyDonationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMyDonations,
    required TResult Function(List<TransactionDocumentResponse>? listDonation)
        successMyDonations,
    required TResult Function(String? errorMessage) errorMyDonations,
    required TResult Function() loadingMyDOnations,
  }) {
    return errorMyDonations(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMyDonations,
    TResult? Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult? Function(String? errorMessage)? errorMyDonations,
    TResult? Function()? loadingMyDOnations,
  }) {
    return errorMyDonations?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMyDonations,
    TResult Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult Function(String? errorMessage)? errorMyDonations,
    TResult Function()? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (errorMyDonations != null) {
      return errorMyDonations(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMyDonations value) initialMyDonations,
    required TResult Function(SuccessMyDonations value) successMyDonations,
    required TResult Function(ErrorMyDonation value) errorMyDonations,
    required TResult Function(LoadingMyDonations value) loadingMyDOnations,
  }) {
    return errorMyDonations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMyDonations value)? initialMyDonations,
    TResult? Function(SuccessMyDonations value)? successMyDonations,
    TResult? Function(ErrorMyDonation value)? errorMyDonations,
    TResult? Function(LoadingMyDonations value)? loadingMyDOnations,
  }) {
    return errorMyDonations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMyDonations value)? initialMyDonations,
    TResult Function(SuccessMyDonations value)? successMyDonations,
    TResult Function(ErrorMyDonation value)? errorMyDonations,
    TResult Function(LoadingMyDonations value)? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (errorMyDonations != null) {
      return errorMyDonations(this);
    }
    return orElse();
  }
}

abstract class ErrorMyDonation implements MyDonationsState {
  const factory ErrorMyDonation(final String? errorMessage) =
      _$ErrorMyDonationImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorMyDonationImplCopyWith<_$ErrorMyDonationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMyDonationsImplCopyWith<$Res> {
  factory _$$LoadingMyDonationsImplCopyWith(_$LoadingMyDonationsImpl value,
          $Res Function(_$LoadingMyDonationsImpl) then) =
      __$$LoadingMyDonationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMyDonationsImplCopyWithImpl<$Res>
    extends _$MyDonationsStateCopyWithImpl<$Res, _$LoadingMyDonationsImpl>
    implements _$$LoadingMyDonationsImplCopyWith<$Res> {
  __$$LoadingMyDonationsImplCopyWithImpl(_$LoadingMyDonationsImpl _value,
      $Res Function(_$LoadingMyDonationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMyDonationsImpl implements LoadingMyDonations {
  const _$LoadingMyDonationsImpl();

  @override
  String toString() {
    return 'MyDonationsState.loadingMyDOnations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMyDonationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMyDonations,
    required TResult Function(List<TransactionDocumentResponse>? listDonation)
        successMyDonations,
    required TResult Function(String? errorMessage) errorMyDonations,
    required TResult Function() loadingMyDOnations,
  }) {
    return loadingMyDOnations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMyDonations,
    TResult? Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult? Function(String? errorMessage)? errorMyDonations,
    TResult? Function()? loadingMyDOnations,
  }) {
    return loadingMyDOnations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMyDonations,
    TResult Function(List<TransactionDocumentResponse>? listDonation)?
        successMyDonations,
    TResult Function(String? errorMessage)? errorMyDonations,
    TResult Function()? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (loadingMyDOnations != null) {
      return loadingMyDOnations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMyDonations value) initialMyDonations,
    required TResult Function(SuccessMyDonations value) successMyDonations,
    required TResult Function(ErrorMyDonation value) errorMyDonations,
    required TResult Function(LoadingMyDonations value) loadingMyDOnations,
  }) {
    return loadingMyDOnations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMyDonations value)? initialMyDonations,
    TResult? Function(SuccessMyDonations value)? successMyDonations,
    TResult? Function(ErrorMyDonation value)? errorMyDonations,
    TResult? Function(LoadingMyDonations value)? loadingMyDOnations,
  }) {
    return loadingMyDOnations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMyDonations value)? initialMyDonations,
    TResult Function(SuccessMyDonations value)? successMyDonations,
    TResult Function(ErrorMyDonation value)? errorMyDonations,
    TResult Function(LoadingMyDonations value)? loadingMyDOnations,
    required TResult orElse(),
  }) {
    if (loadingMyDOnations != null) {
      return loadingMyDOnations(this);
    }
    return orElse();
  }
}

abstract class LoadingMyDonations implements MyDonationsState {
  const factory LoadingMyDonations() = _$LoadingMyDonationsImpl;
}
