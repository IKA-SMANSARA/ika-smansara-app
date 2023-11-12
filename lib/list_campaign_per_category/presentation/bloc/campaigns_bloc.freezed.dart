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
    required TResult Function(String? categoryName) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? categoryName)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? categoryName)? fetchData,
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
    required TResult Function(String? categoryName) fetchData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? categoryName)? fetchData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? categoryName)? fetchData,
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
  @useResult
  $Res call({String? categoryName});
}

/// @nodoc
class __$$_FetchDataCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res, _$_FetchData>
    implements _$$_FetchDataCopyWith<$Res> {
  __$$_FetchDataCopyWithImpl(
      _$_FetchData _value, $Res Function(_$_FetchData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$_FetchData(
      freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData(this.categoryName);

  @override
  final String? categoryName;

  @override
  String toString() {
    return 'CampaignsEvent.fetchData(categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchData &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchDataCopyWith<_$_FetchData> get copyWith =>
      __$$_FetchDataCopyWithImpl<_$_FetchData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? categoryName) fetchData,
  }) {
    return fetchData(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? categoryName)? fetchData,
  }) {
    return fetchData?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? categoryName)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(categoryName);
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
  const factory _FetchData(final String? categoryName) = _$_FetchData;

  String? get categoryName;
  @JsonKey(ignore: true)
  _$$_FetchDataCopyWith<_$_FetchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CampaignsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaign,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaign,
    required TResult Function(String? errorMessage) errorCampaign,
    required TResult Function() loadingCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaign,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult? Function(String? errorMessage)? errorCampaign,
    TResult? Function()? loadingCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaign,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult Function(String? errorMessage)? errorCampaign,
    TResult Function()? loadingCampaign,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaign value) initialCampaign,
    required TResult Function(SuccessCampaign value) successCampaign,
    required TResult Function(ErrorCampaign value) errorCampaign,
    required TResult Function(LoadingCampaign value) loadingCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaign value)? initialCampaign,
    TResult? Function(SuccessCampaign value)? successCampaign,
    TResult? Function(ErrorCampaign value)? errorCampaign,
    TResult? Function(LoadingCampaign value)? loadingCampaign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaign value)? initialCampaign,
    TResult Function(SuccessCampaign value)? successCampaign,
    TResult Function(ErrorCampaign value)? errorCampaign,
    TResult Function(LoadingCampaign value)? loadingCampaign,
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
abstract class _$$InitialCampaignCopyWith<$Res> {
  factory _$$InitialCampaignCopyWith(
          _$InitialCampaign value, $Res Function(_$InitialCampaign) then) =
      __$$InitialCampaignCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCampaignCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$InitialCampaign>
    implements _$$InitialCampaignCopyWith<$Res> {
  __$$InitialCampaignCopyWithImpl(
      _$InitialCampaign _value, $Res Function(_$InitialCampaign) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCampaign implements InitialCampaign {
  const _$InitialCampaign();

  @override
  String toString() {
    return 'CampaignsState.initialCampaign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCampaign);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaign,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaign,
    required TResult Function(String? errorMessage) errorCampaign,
    required TResult Function() loadingCampaign,
  }) {
    return initialCampaign();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaign,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult? Function(String? errorMessage)? errorCampaign,
    TResult? Function()? loadingCampaign,
  }) {
    return initialCampaign?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaign,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult Function(String? errorMessage)? errorCampaign,
    TResult Function()? loadingCampaign,
    required TResult orElse(),
  }) {
    if (initialCampaign != null) {
      return initialCampaign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaign value) initialCampaign,
    required TResult Function(SuccessCampaign value) successCampaign,
    required TResult Function(ErrorCampaign value) errorCampaign,
    required TResult Function(LoadingCampaign value) loadingCampaign,
  }) {
    return initialCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaign value)? initialCampaign,
    TResult? Function(SuccessCampaign value)? successCampaign,
    TResult? Function(ErrorCampaign value)? errorCampaign,
    TResult? Function(LoadingCampaign value)? loadingCampaign,
  }) {
    return initialCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaign value)? initialCampaign,
    TResult Function(SuccessCampaign value)? successCampaign,
    TResult Function(ErrorCampaign value)? errorCampaign,
    TResult Function(LoadingCampaign value)? loadingCampaign,
    required TResult orElse(),
  }) {
    if (initialCampaign != null) {
      return initialCampaign(this);
    }
    return orElse();
  }
}

abstract class InitialCampaign implements CampaignsState {
  const factory InitialCampaign() = _$InitialCampaign;
}

/// @nodoc
abstract class _$$SuccessCampaignCopyWith<$Res> {
  factory _$$SuccessCampaignCopyWith(
          _$SuccessCampaign value, $Res Function(_$SuccessCampaign) then) =
      __$$SuccessCampaignCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CampaignDocumentResponse>? listCampaigns});
}

/// @nodoc
class __$$SuccessCampaignCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$SuccessCampaign>
    implements _$$SuccessCampaignCopyWith<$Res> {
  __$$SuccessCampaignCopyWithImpl(
      _$SuccessCampaign _value, $Res Function(_$SuccessCampaign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCampaigns = freezed,
  }) {
    return _then(_$SuccessCampaign(
      listCampaigns: freezed == listCampaigns
          ? _value._listCampaigns
          : listCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCampaign implements SuccessCampaign {
  const _$SuccessCampaign(
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
    return 'CampaignsState.successCampaign(listCampaigns: $listCampaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCampaign &&
            const DeepCollectionEquality()
                .equals(other._listCampaigns, _listCampaigns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCampaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCampaignCopyWith<_$SuccessCampaign> get copyWith =>
      __$$SuccessCampaignCopyWithImpl<_$SuccessCampaign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaign,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaign,
    required TResult Function(String? errorMessage) errorCampaign,
    required TResult Function() loadingCampaign,
  }) {
    return successCampaign(listCampaigns);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaign,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult? Function(String? errorMessage)? errorCampaign,
    TResult? Function()? loadingCampaign,
  }) {
    return successCampaign?.call(listCampaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaign,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult Function(String? errorMessage)? errorCampaign,
    TResult Function()? loadingCampaign,
    required TResult orElse(),
  }) {
    if (successCampaign != null) {
      return successCampaign(listCampaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaign value) initialCampaign,
    required TResult Function(SuccessCampaign value) successCampaign,
    required TResult Function(ErrorCampaign value) errorCampaign,
    required TResult Function(LoadingCampaign value) loadingCampaign,
  }) {
    return successCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaign value)? initialCampaign,
    TResult? Function(SuccessCampaign value)? successCampaign,
    TResult? Function(ErrorCampaign value)? errorCampaign,
    TResult? Function(LoadingCampaign value)? loadingCampaign,
  }) {
    return successCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaign value)? initialCampaign,
    TResult Function(SuccessCampaign value)? successCampaign,
    TResult Function(ErrorCampaign value)? errorCampaign,
    TResult Function(LoadingCampaign value)? loadingCampaign,
    required TResult orElse(),
  }) {
    if (successCampaign != null) {
      return successCampaign(this);
    }
    return orElse();
  }
}

abstract class SuccessCampaign implements CampaignsState {
  const factory SuccessCampaign(
          {final List<CampaignDocumentResponse>? listCampaigns}) =
      _$SuccessCampaign;

  List<CampaignDocumentResponse>? get listCampaigns;
  @JsonKey(ignore: true)
  _$$SuccessCampaignCopyWith<_$SuccessCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCampaignCopyWith<$Res> {
  factory _$$ErrorCampaignCopyWith(
          _$ErrorCampaign value, $Res Function(_$ErrorCampaign) then) =
      __$$ErrorCampaignCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCampaignCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$ErrorCampaign>
    implements _$$ErrorCampaignCopyWith<$Res> {
  __$$ErrorCampaignCopyWithImpl(
      _$ErrorCampaign _value, $Res Function(_$ErrorCampaign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCampaign(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCampaign implements ErrorCampaign {
  const _$ErrorCampaign(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CampaignsState.errorCampaign(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCampaign &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCampaignCopyWith<_$ErrorCampaign> get copyWith =>
      __$$ErrorCampaignCopyWithImpl<_$ErrorCampaign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaign,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaign,
    required TResult Function(String? errorMessage) errorCampaign,
    required TResult Function() loadingCampaign,
  }) {
    return errorCampaign(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaign,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult? Function(String? errorMessage)? errorCampaign,
    TResult? Function()? loadingCampaign,
  }) {
    return errorCampaign?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaign,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult Function(String? errorMessage)? errorCampaign,
    TResult Function()? loadingCampaign,
    required TResult orElse(),
  }) {
    if (errorCampaign != null) {
      return errorCampaign(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaign value) initialCampaign,
    required TResult Function(SuccessCampaign value) successCampaign,
    required TResult Function(ErrorCampaign value) errorCampaign,
    required TResult Function(LoadingCampaign value) loadingCampaign,
  }) {
    return errorCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaign value)? initialCampaign,
    TResult? Function(SuccessCampaign value)? successCampaign,
    TResult? Function(ErrorCampaign value)? errorCampaign,
    TResult? Function(LoadingCampaign value)? loadingCampaign,
  }) {
    return errorCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaign value)? initialCampaign,
    TResult Function(SuccessCampaign value)? successCampaign,
    TResult Function(ErrorCampaign value)? errorCampaign,
    TResult Function(LoadingCampaign value)? loadingCampaign,
    required TResult orElse(),
  }) {
    if (errorCampaign != null) {
      return errorCampaign(this);
    }
    return orElse();
  }
}

abstract class ErrorCampaign implements CampaignsState {
  const factory ErrorCampaign(final String? errorMessage) = _$ErrorCampaign;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCampaignCopyWith<_$ErrorCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCampaignCopyWith<$Res> {
  factory _$$LoadingCampaignCopyWith(
          _$LoadingCampaign value, $Res Function(_$LoadingCampaign) then) =
      __$$LoadingCampaignCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCampaignCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$LoadingCampaign>
    implements _$$LoadingCampaignCopyWith<$Res> {
  __$$LoadingCampaignCopyWithImpl(
      _$LoadingCampaign _value, $Res Function(_$LoadingCampaign) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCampaign implements LoadingCampaign {
  const _$LoadingCampaign();

  @override
  String toString() {
    return 'CampaignsState.loadingCampaign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCampaign);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCampaign,
    required TResult Function(List<CampaignDocumentResponse>? listCampaigns)
        successCampaign,
    required TResult Function(String? errorMessage) errorCampaign,
    required TResult Function() loadingCampaign,
  }) {
    return loadingCampaign();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCampaign,
    TResult? Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult? Function(String? errorMessage)? errorCampaign,
    TResult? Function()? loadingCampaign,
  }) {
    return loadingCampaign?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCampaign,
    TResult Function(List<CampaignDocumentResponse>? listCampaigns)?
        successCampaign,
    TResult Function(String? errorMessage)? errorCampaign,
    TResult Function()? loadingCampaign,
    required TResult orElse(),
  }) {
    if (loadingCampaign != null) {
      return loadingCampaign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCampaign value) initialCampaign,
    required TResult Function(SuccessCampaign value) successCampaign,
    required TResult Function(ErrorCampaign value) errorCampaign,
    required TResult Function(LoadingCampaign value) loadingCampaign,
  }) {
    return loadingCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCampaign value)? initialCampaign,
    TResult? Function(SuccessCampaign value)? successCampaign,
    TResult? Function(ErrorCampaign value)? errorCampaign,
    TResult? Function(LoadingCampaign value)? loadingCampaign,
  }) {
    return loadingCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCampaign value)? initialCampaign,
    TResult Function(SuccessCampaign value)? successCampaign,
    TResult Function(ErrorCampaign value)? errorCampaign,
    TResult Function(LoadingCampaign value)? loadingCampaign,
    required TResult orElse(),
  }) {
    if (loadingCampaign != null) {
      return loadingCampaign(this);
    }
    return orElse();
  }
}

abstract class LoadingCampaign implements CampaignsState {
  const factory LoadingCampaign() = _$LoadingCampaign;
}
