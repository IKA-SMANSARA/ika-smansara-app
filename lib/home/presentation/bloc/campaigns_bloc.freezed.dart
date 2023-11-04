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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CampaignsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FetchDataCopyWith<$Res> {
  factory _$$_FetchDataCopyWith(
          _$_FetchData value, $Res Function(_$_FetchData) then) =
      __$$_FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDataCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res, _$_FetchData>
    implements _$$_FetchDataCopyWith<$Res> {
  __$$_FetchDataCopyWithImpl(
      _$_FetchData _value, $Res Function(_$_FetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData();

  @override
  String toString() {
    return 'CampaignsEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchData);
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
  const factory _FetchData() = _$_FetchData;
}

/// @nodoc
mixin _$CampaignsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignItemResponse>? listCampaigns)
        successCampaigns,
    required TResult Function(String? errorMessage) errorCampaigns,
    required TResult Function() loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaigns,
    TResult? Function(List<CampaignItemResponse>? listCampaigns)?
        successCampaigns,
    TResult? Function(String? errorMessage)? errorCampaigns,
    TResult? Function()? loadingCampaigns,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaigns,
    TResult Function(List<CampaignItemResponse>? listCampaigns)?
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
abstract class _$$InitialCampaignsCopyWith<$Res> {
  factory _$$InitialCampaignsCopyWith(
          _$InitialCampaigns value, $Res Function(_$InitialCampaigns) then) =
      __$$InitialCampaignsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCampaignsCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$InitialCampaigns>
    implements _$$InitialCampaignsCopyWith<$Res> {
  __$$InitialCampaignsCopyWithImpl(
      _$InitialCampaigns _value, $Res Function(_$InitialCampaigns) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCampaigns implements InitialCampaigns {
  const _$InitialCampaigns();

  @override
  String toString() {
    return 'CampaignsState.initialCampaigns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCampaigns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignItemResponse>? listCampaigns)
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
    TResult? Function(List<CampaignItemResponse>? listCampaigns)?
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
    TResult Function(List<CampaignItemResponse>? listCampaigns)?
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
  const factory InitialCampaigns() = _$InitialCampaigns;
}

/// @nodoc
abstract class _$$SuccessCampaignsCopyWith<$Res> {
  factory _$$SuccessCampaignsCopyWith(
          _$SuccessCampaigns value, $Res Function(_$SuccessCampaigns) then) =
      __$$SuccessCampaignsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CampaignItemResponse>? listCampaigns});
}

/// @nodoc
class __$$SuccessCampaignsCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$SuccessCampaigns>
    implements _$$SuccessCampaignsCopyWith<$Res> {
  __$$SuccessCampaignsCopyWithImpl(
      _$SuccessCampaigns _value, $Res Function(_$SuccessCampaigns) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCampaigns = freezed,
  }) {
    return _then(_$SuccessCampaigns(
      listCampaigns: freezed == listCampaigns
          ? _value._listCampaigns
          : listCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignItemResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCampaigns implements SuccessCampaigns {
  const _$SuccessCampaigns(
      {final List<CampaignItemResponse>? listCampaigns = const []})
      : _listCampaigns = listCampaigns;

  final List<CampaignItemResponse>? _listCampaigns;
  @override
  @JsonKey()
  List<CampaignItemResponse>? get listCampaigns {
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
            other is _$SuccessCampaigns &&
            const DeepCollectionEquality()
                .equals(other._listCampaigns, _listCampaigns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCampaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCampaignsCopyWith<_$SuccessCampaigns> get copyWith =>
      __$$SuccessCampaignsCopyWithImpl<_$SuccessCampaigns>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignItemResponse>? listCampaigns)
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
    TResult? Function(List<CampaignItemResponse>? listCampaigns)?
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
    TResult Function(List<CampaignItemResponse>? listCampaigns)?
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
      {final List<CampaignItemResponse>? listCampaigns}) = _$SuccessCampaigns;

  List<CampaignItemResponse>? get listCampaigns;
  @JsonKey(ignore: true)
  _$$SuccessCampaignsCopyWith<_$SuccessCampaigns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCampaignsCopyWith<$Res> {
  factory _$$ErrorCampaignsCopyWith(
          _$ErrorCampaigns value, $Res Function(_$ErrorCampaigns) then) =
      __$$ErrorCampaignsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCampaignsCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$ErrorCampaigns>
    implements _$$ErrorCampaignsCopyWith<$Res> {
  __$$ErrorCampaignsCopyWithImpl(
      _$ErrorCampaigns _value, $Res Function(_$ErrorCampaigns) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCampaigns(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCampaigns implements ErrorCampaigns {
  const _$ErrorCampaigns(this.errorMessage);

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
            other is _$ErrorCampaigns &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCampaignsCopyWith<_$ErrorCampaigns> get copyWith =>
      __$$ErrorCampaignsCopyWithImpl<_$ErrorCampaigns>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignItemResponse>? listCampaigns)
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
    TResult? Function(List<CampaignItemResponse>? listCampaigns)?
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
    TResult Function(List<CampaignItemResponse>? listCampaigns)?
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
  const factory ErrorCampaigns(final String? errorMessage) = _$ErrorCampaigns;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCampaignsCopyWith<_$ErrorCampaigns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCampaignsCopyWith<$Res> {
  factory _$$LoadingCampaignsCopyWith(
          _$LoadingCampaigns value, $Res Function(_$LoadingCampaigns) then) =
      __$$LoadingCampaignsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCampaignsCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$LoadingCampaigns>
    implements _$$LoadingCampaignsCopyWith<$Res> {
  __$$LoadingCampaignsCopyWithImpl(
      _$LoadingCampaigns _value, $Res Function(_$LoadingCampaigns) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCampaigns implements LoadingCampaigns {
  const _$LoadingCampaigns();

  @override
  String toString() {
    return 'CampaignsState.loadingCampaigns()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCampaigns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaigns,
    required TResult Function(List<CampaignItemResponse>? listCampaigns)
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
    TResult? Function(List<CampaignItemResponse>? listCampaigns)?
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
    TResult Function(List<CampaignItemResponse>? listCampaigns)?
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
  const factory LoadingCampaigns() = _$LoadingCampaigns;
}
