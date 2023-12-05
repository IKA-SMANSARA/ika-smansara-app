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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryName});
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$FetchDataImpl(
      freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl(this.categoryName);

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
            other is _$FetchDataImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      __$$FetchDataImplCopyWithImpl<_$FetchDataImpl>(this, _$identity);

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
  const factory _FetchData(final String? categoryName) = _$FetchDataImpl;

  String? get categoryName;
  @JsonKey(ignore: true)
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
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
abstract class _$$InitialCampaignImplCopyWith<$Res> {
  factory _$$InitialCampaignImplCopyWith(_$InitialCampaignImpl value,
          $Res Function(_$InitialCampaignImpl) then) =
      __$$InitialCampaignImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCampaignImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$InitialCampaignImpl>
    implements _$$InitialCampaignImplCopyWith<$Res> {
  __$$InitialCampaignImplCopyWithImpl(
      _$InitialCampaignImpl _value, $Res Function(_$InitialCampaignImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCampaignImpl implements InitialCampaign {
  const _$InitialCampaignImpl();

  @override
  String toString() {
    return 'CampaignsState.initialCampaign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCampaignImpl);
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
  const factory InitialCampaign() = _$InitialCampaignImpl;
}

/// @nodoc
abstract class _$$SuccessCampaignImplCopyWith<$Res> {
  factory _$$SuccessCampaignImplCopyWith(_$SuccessCampaignImpl value,
          $Res Function(_$SuccessCampaignImpl) then) =
      __$$SuccessCampaignImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CampaignDocumentResponse>? listCampaigns});
}

/// @nodoc
class __$$SuccessCampaignImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$SuccessCampaignImpl>
    implements _$$SuccessCampaignImplCopyWith<$Res> {
  __$$SuccessCampaignImplCopyWithImpl(
      _$SuccessCampaignImpl _value, $Res Function(_$SuccessCampaignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCampaigns = freezed,
  }) {
    return _then(_$SuccessCampaignImpl(
      listCampaigns: freezed == listCampaigns
          ? _value._listCampaigns
          : listCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCampaignImpl implements SuccessCampaign {
  const _$SuccessCampaignImpl(
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
            other is _$SuccessCampaignImpl &&
            const DeepCollectionEquality()
                .equals(other._listCampaigns, _listCampaigns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCampaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCampaignImplCopyWith<_$SuccessCampaignImpl> get copyWith =>
      __$$SuccessCampaignImplCopyWithImpl<_$SuccessCampaignImpl>(
          this, _$identity);

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
      _$SuccessCampaignImpl;

  List<CampaignDocumentResponse>? get listCampaigns;
  @JsonKey(ignore: true)
  _$$SuccessCampaignImplCopyWith<_$SuccessCampaignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCampaignImplCopyWith<$Res> {
  factory _$$ErrorCampaignImplCopyWith(
          _$ErrorCampaignImpl value, $Res Function(_$ErrorCampaignImpl) then) =
      __$$ErrorCampaignImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCampaignImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$ErrorCampaignImpl>
    implements _$$ErrorCampaignImplCopyWith<$Res> {
  __$$ErrorCampaignImplCopyWithImpl(
      _$ErrorCampaignImpl _value, $Res Function(_$ErrorCampaignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCampaignImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCampaignImpl implements ErrorCampaign {
  const _$ErrorCampaignImpl(this.errorMessage);

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
            other is _$ErrorCampaignImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCampaignImplCopyWith<_$ErrorCampaignImpl> get copyWith =>
      __$$ErrorCampaignImplCopyWithImpl<_$ErrorCampaignImpl>(this, _$identity);

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
  const factory ErrorCampaign(final String? errorMessage) = _$ErrorCampaignImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCampaignImplCopyWith<_$ErrorCampaignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCampaignImplCopyWith<$Res> {
  factory _$$LoadingCampaignImplCopyWith(_$LoadingCampaignImpl value,
          $Res Function(_$LoadingCampaignImpl) then) =
      __$$LoadingCampaignImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCampaignImplCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res, _$LoadingCampaignImpl>
    implements _$$LoadingCampaignImplCopyWith<$Res> {
  __$$LoadingCampaignImplCopyWithImpl(
      _$LoadingCampaignImpl _value, $Res Function(_$LoadingCampaignImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCampaignImpl implements LoadingCampaign {
  const _$LoadingCampaignImpl();

  @override
  String toString() {
    return 'CampaignsState.loadingCampaign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCampaignImpl);
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
  const factory LoadingCampaign() = _$LoadingCampaignImpl;
}
