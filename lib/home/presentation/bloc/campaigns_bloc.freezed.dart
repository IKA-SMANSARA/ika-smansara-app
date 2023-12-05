// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CampaignsEvent {
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
abstract class $CampaignsEventCopyWith<$Res> {
  factory $CampaignsEventCopyWith(
          CampaignsEvent value, $Res Function(CampaignsEvent) then) =
      _$CampaignsEventCopyWithImpl<$Res, CampaignsEvent>;
}

/// @nodoc
class _$CampaignsEventCopyWithImpl<$Res, $Val extends CampaignsEvent>
    implements $CampaignsEventCopyWith<$Res> {
  _$CampaignsEventCopyWithImpl(this._value, this._then);

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
    extends _$CampaignsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CampaignsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
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

abstract class _Started implements CampaignsEvent {
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
    extends _$CampaignsEventCopyWithImpl<$Res, _$FetchDataImpl>
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
    return 'CampaignsEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
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

abstract class _FetchData implements CampaignsEvent {
  const factory _FetchData() = _$FetchDataImpl;
}

/// @nodoc
mixin _$CampaignsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult Function(String? errorMessage)? errorCampaigns,
    TResult Function()? loadingCampaigns,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaigns value) initialCampaigns,
    required TResult Function(SuccessCampaigns value) successCampaigns,
    required TResult Function(ErrorCampaigns value) errorCampaigns,
    required TResult Function(LoadingCampaigns value) loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaigns value)? initialCampaigns,
    TResult? Function(SuccessCampaigns value)? successCampaigns,
    TResult? Function(ErrorCampaigns value)? errorCampaigns,
    TResult? Function(LoadingCampaigns value)? loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaigns value)? initialCampaigns,
    TResult Function(SuccessCampaigns value)? successCampaigns,
    TResult Function(ErrorCampaigns value)? errorCampaigns,
    TResult Function(LoadingCampaigns value)? loadingCampaigns,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsStateCopyWith<$Res> {
  factory $CampaignsStateCopyWith(
          CampaignsState value, $Res Function(CampaignsState) then) =
      _$CampaignsStateCopyWithImpl<$Res, CampaignsState>;
}

/// @nodoc
class _$CampaignsStateCopyWithImpl<$Res, $Val extends CampaignsState>
    implements $CampaignsStateCopyWith<$Res> {
  _$CampaignsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCampaignsImplCopyWith<$Res> {
  factory _$$InitialCampaignsImplCopyWith(_$InitialCampaignsImpl value,
          $Res Function(_$InitialCampaignsImpl) then) =
      __$$InitialCampaignsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCampaignsImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$InitialCampaignsImpl>
    implements _$$InitialCampaignsImplCopyWith<$Res> {
  __$$InitialCampaignsImplCopyWithImpl(_$InitialCampaignsImpl _value,
      $Res Function(_$InitialCampaignsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCampaignsImpl implements InitialCampaigns {
  const _$InitialCampaignsImpl();

  @override
  String toString() {
    return 'CampaignsState.initialCampaigns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCampaignsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) {
    return initialCampaigns();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) {
    return initialCampaigns?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult Function(String? errorMessage)? errorCampaigns,
    TResult Function()? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (initialCampaigns != null) {
      return initialCampaigns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaigns value) initialCampaigns,
    required TResult Function(SuccessCampaigns value) successCampaigns,
    required TResult Function(ErrorCampaigns value) errorCampaigns,
    required TResult Function(LoadingCampaigns value) loadingCampaigns,
  }) {
    return initialCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaigns value)? initialCampaigns,
    TResult? Function(SuccessCampaigns value)? successCampaigns,
    TResult? Function(ErrorCampaigns value)? errorCampaigns,
    TResult? Function(LoadingCampaigns value)? loadingCampaigns,
  }) {
    return initialCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaigns value)? initialCampaigns,
    TResult Function(SuccessCampaigns value)? successCampaigns,
    TResult Function(ErrorCampaigns value)? errorCampaigns,
    TResult Function(LoadingCampaigns value)? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (initialCampaigns != null) {
      return initialCampaigns(this);
    }
    return orElse();
  }
}

abstract class InitialCampaigns implements CampaignsState {
  const factory InitialCampaigns() = _$InitialCampaignsImpl;
}

/// @nodoc
abstract class _$$SuccessCampaignsImplCopyWith<$Res> {
  factory _$$SuccessCampaignsImplCopyWith(_$SuccessCampaignsImpl value,
          $Res Function(_$SuccessCampaignsImpl) then) =
      __$$SuccessCampaignsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CampaignDocumentResponse>? listCampaigns});
}

/// @nodoc
class __$$SuccessCampaignsImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$SuccessCampaignsImpl>
    implements _$$SuccessCampaignsImplCopyWith<$Res> {
  __$$SuccessCampaignsImplCopyWithImpl(_$SuccessCampaignsImpl _value,
      $Res Function(_$SuccessCampaignsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCampaigns = freezed,
  }) {
    return _then(_$SuccessCampaignsImpl(
      listCampaigns: freezed == listCampaigns
          ? _value._listCampaigns
          : listCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCampaignsImpl implements SuccessCampaigns {
  const _$SuccessCampaignsImpl(
      {final List<CampaignDocumentResponse>? listCampaigns = const []})
      : _listCampaigns = listCampaigns;

  final List<CampaignDocumentResponse>? _listCampaigns;
  @override
  @JsonKey()
  List<CampaignDocumentResponse>? get listCampaigns {
    final value = _listCampaigns;
    if (value == null) return null;
    if (_listCampaigns is EqualUnmodifiableListView) return _listCampaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CampaignsState.successCampaigns(listCampaigns: $listCampaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCampaignsImpl &&
            const DeepCollectionEquality()
                .equals(other._listCampaigns, _listCampaigns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCampaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCampaignsImplCopyWith<_$SuccessCampaignsImpl> get copyWith =>
      __$$SuccessCampaignsImplCopyWithImpl<_$SuccessCampaignsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) {
    return successCampaigns(listCampaigns);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) {
    return successCampaigns?.call(listCampaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult Function(String? errorMessage)? errorCampaigns,
    TResult Function()? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (successCampaigns != null) {
      return successCampaigns(listCampaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaigns value) initialCampaigns,
    required TResult Function(SuccessCampaigns value) successCampaigns,
    required TResult Function(ErrorCampaigns value) errorCampaigns,
    required TResult Function(LoadingCampaigns value) loadingCampaigns,
  }) {
    return successCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaigns value)? initialCampaigns,
    TResult? Function(SuccessCampaigns value)? successCampaigns,
    TResult? Function(ErrorCampaigns value)? errorCampaigns,
    TResult? Function(LoadingCampaigns value)? loadingCampaigns,
  }) {
    return successCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaigns value)? initialCampaigns,
    TResult Function(SuccessCampaigns value)? successCampaigns,
    TResult Function(ErrorCampaigns value)? errorCampaigns,
    TResult Function(LoadingCampaigns value)? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (successCampaigns != null) {
      return successCampaigns(this);
    }
    return orElse();
  }
}

abstract class SuccessCampaigns implements CampaignsState {
  const factory SuccessCampaigns(
          {final List<CampaignDocumentResponse>? listCampaigns}) =
      _$SuccessCampaignsImpl;

  List<CampaignDocumentResponse>? get listCampaigns;
  @JsonKey(ignore: true)
  _$$SuccessCampaignsImplCopyWith<_$SuccessCampaignsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCampaignsImplCopyWith<$Res> {
  factory _$$ErrorCampaignsImplCopyWith(_$ErrorCampaignsImpl value,
          $Res Function(_$ErrorCampaignsImpl) then) =
      __$$ErrorCampaignsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCampaignsImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$ErrorCampaignsImpl>
    implements _$$ErrorCampaignsImplCopyWith<$Res> {
  __$$ErrorCampaignsImplCopyWithImpl(
      _$ErrorCampaignsImpl _value, $Res Function(_$ErrorCampaignsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCampaignsImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCampaignsImpl implements ErrorCampaigns {
  const _$ErrorCampaignsImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CampaignsState.errorCampaigns(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCampaignsImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCampaignsImplCopyWith<_$ErrorCampaignsImpl> get copyWith =>
      __$$ErrorCampaignsImplCopyWithImpl<_$ErrorCampaignsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) {
    return errorCampaigns(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) {
    return errorCampaigns?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult Function(String? errorMessage)? errorCampaigns,
    TResult Function()? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (errorCampaigns != null) {
      return errorCampaigns(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaigns value) initialCampaigns,
    required TResult Function(SuccessCampaigns value) successCampaigns,
    required TResult Function(ErrorCampaigns value) errorCampaigns,
    required TResult Function(LoadingCampaigns value) loadingCampaigns,
  }) {
    return errorCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaigns value)? initialCampaigns,
    TResult? Function(SuccessCampaigns value)? successCampaigns,
    TResult? Function(ErrorCampaigns value)? errorCampaigns,
    TResult? Function(LoadingCampaigns value)? loadingCampaigns,
  }) {
    return errorCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaigns value)? initialCampaigns,
    TResult Function(SuccessCampaigns value)? successCampaigns,
    TResult Function(ErrorCampaigns value)? errorCampaigns,
    TResult Function(LoadingCampaigns value)? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (errorCampaigns != null) {
      return errorCampaigns(this);
    }
    return orElse();
  }
}

abstract class ErrorCampaigns implements CampaignsState {
  const factory ErrorCampaigns(final String? errorMessage) =
      _$ErrorCampaignsImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCampaignsImplCopyWith<_$ErrorCampaignsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCampaignsImplCopyWith<$Res> {
  factory _$$LoadingCampaignsImplCopyWith(_$LoadingCampaignsImpl value,
          $Res Function(_$LoadingCampaignsImpl) then) =
      __$$LoadingCampaignsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCampaignsImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$LoadingCampaignsImpl>
    implements _$$LoadingCampaignsImplCopyWith<$Res> {
  __$$LoadingCampaignsImplCopyWithImpl(_$LoadingCampaignsImpl _value,
      $Res Function(_$LoadingCampaignsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCampaignsImpl implements LoadingCampaigns {
  const _$LoadingCampaignsImpl();

  @override
  String toString() {
    return 'CampaignsState.loadingCampaigns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCampaignsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) {
    return loadingCampaigns();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) {
    return loadingCampaigns?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaigns,
    TResult Function(String? errorMessage)? errorCampaigns,
    TResult Function()? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (loadingCampaigns != null) {
      return loadingCampaigns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaigns value) initialCampaigns,
    required TResult Function(SuccessCampaigns value) successCampaigns,
    required TResult Function(ErrorCampaigns value) errorCampaigns,
    required TResult Function(LoadingCampaigns value) loadingCampaigns,
  }) {
    return loadingCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaigns value)? initialCampaigns,
    TResult? Function(SuccessCampaigns value)? successCampaigns,
    TResult? Function(ErrorCampaigns value)? errorCampaigns,
    TResult? Function(LoadingCampaigns value)? loadingCampaigns,
  }) {
    return loadingCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaigns value)? initialCampaigns,
    TResult Function(SuccessCampaigns value)? successCampaigns,
    TResult Function(ErrorCampaigns value)? errorCampaigns,
    TResult Function(LoadingCampaigns value)? loadingCampaigns,
    required TResult orElse(),
  }) {
    if (loadingCampaigns != null) {
      return loadingCampaigns(this);
    }
    return orElse();
  }
}

abstract class LoadingCampaigns implements CampaignsState {
  const factory LoadingCampaigns() = _$LoadingCampaignsImpl;
}
