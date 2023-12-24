// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_backer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListBackerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? documentId) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? documentId)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? documentId)? fetchData,
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
abstract class $ListBackerEventCopyWith<$Res> {
  factory $ListBackerEventCopyWith(
          ListBackerEvent value, $Res Function(ListBackerEvent) then) =
      _$ListBackerEventCopyWithImpl<$Res, ListBackerEvent>;
}

/// @nodoc
class _$ListBackerEventCopyWithImpl<$Res, $Val extends ListBackerEvent>
    implements $ListBackerEventCopyWith<$Res> {
  _$ListBackerEventCopyWithImpl(this._value, this._then);

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
    extends _$ListBackerEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ListBackerEvent.started()';
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
    required TResult Function(String? documentId) fetchData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? documentId)? fetchData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? documentId)? fetchData,
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

abstract class _Started implements ListBackerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? documentId});
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$ListBackerEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
  }) {
    return _then(_$FetchDataImpl(
      freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl(this.documentId);

  @override
  final String? documentId;

  @override
  String toString() {
    return 'ListBackerEvent.fetchData(documentId: $documentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      __$$FetchDataImplCopyWithImpl<_$FetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? documentId) fetchData,
  }) {
    return fetchData(documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? documentId)? fetchData,
  }) {
    return fetchData?.call(documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? documentId)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(documentId);
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

abstract class _FetchData implements ListBackerEvent {
  const factory _FetchData(final String? documentId) = _$FetchDataImpl;

  String? get documentId;
  @JsonKey(ignore: true)
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListBackerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListBacker listBacker) success,
    required TResult Function(String? errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListBacker listBacker)? success,
    TResult? Function(String? errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListBacker listBacker)? success,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialListBacker value) initial,
    required TResult Function(LoadingListBacker value) loading,
    required TResult Function(SuccessListBacker value) success,
    required TResult Function(ErrorListBacker value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialListBacker value)? initial,
    TResult? Function(LoadingListBacker value)? loading,
    TResult? Function(SuccessListBacker value)? success,
    TResult? Function(ErrorListBacker value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialListBacker value)? initial,
    TResult Function(LoadingListBacker value)? loading,
    TResult Function(SuccessListBacker value)? success,
    TResult Function(ErrorListBacker value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBackerStateCopyWith<$Res> {
  factory $ListBackerStateCopyWith(
          ListBackerState value, $Res Function(ListBackerState) then) =
      _$ListBackerStateCopyWithImpl<$Res, ListBackerState>;
}

/// @nodoc
class _$ListBackerStateCopyWithImpl<$Res, $Val extends ListBackerState>
    implements $ListBackerStateCopyWith<$Res> {
  _$ListBackerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialListBackerImplCopyWith<$Res> {
  factory _$$InitialListBackerImplCopyWith(_$InitialListBackerImpl value,
          $Res Function(_$InitialListBackerImpl) then) =
      __$$InitialListBackerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialListBackerImplCopyWithImpl<$Res>
    extends _$ListBackerStateCopyWithImpl<$Res, _$InitialListBackerImpl>
    implements _$$InitialListBackerImplCopyWith<$Res> {
  __$$InitialListBackerImplCopyWithImpl(_$InitialListBackerImpl _value,
      $Res Function(_$InitialListBackerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialListBackerImpl implements InitialListBacker {
  const _$InitialListBackerImpl();

  @override
  String toString() {
    return 'ListBackerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialListBackerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListBacker listBacker) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListBacker listBacker)? success,
    TResult? Function(String? errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListBacker listBacker)? success,
    TResult Function(String? errorMessage)? error,
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
    required TResult Function(InitialListBacker value) initial,
    required TResult Function(LoadingListBacker value) loading,
    required TResult Function(SuccessListBacker value) success,
    required TResult Function(ErrorListBacker value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialListBacker value)? initial,
    TResult? Function(LoadingListBacker value)? loading,
    TResult? Function(SuccessListBacker value)? success,
    TResult? Function(ErrorListBacker value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialListBacker value)? initial,
    TResult Function(LoadingListBacker value)? loading,
    TResult Function(SuccessListBacker value)? success,
    TResult Function(ErrorListBacker value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialListBacker implements ListBackerState {
  const factory InitialListBacker() = _$InitialListBackerImpl;
}

/// @nodoc
abstract class _$$LoadingListBackerImplCopyWith<$Res> {
  factory _$$LoadingListBackerImplCopyWith(_$LoadingListBackerImpl value,
          $Res Function(_$LoadingListBackerImpl) then) =
      __$$LoadingListBackerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingListBackerImplCopyWithImpl<$Res>
    extends _$ListBackerStateCopyWithImpl<$Res, _$LoadingListBackerImpl>
    implements _$$LoadingListBackerImplCopyWith<$Res> {
  __$$LoadingListBackerImplCopyWithImpl(_$LoadingListBackerImpl _value,
      $Res Function(_$LoadingListBackerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingListBackerImpl implements LoadingListBacker {
  const _$LoadingListBackerImpl();

  @override
  String toString() {
    return 'ListBackerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingListBackerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListBacker listBacker) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListBacker listBacker)? success,
    TResult? Function(String? errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListBacker listBacker)? success,
    TResult Function(String? errorMessage)? error,
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
    required TResult Function(InitialListBacker value) initial,
    required TResult Function(LoadingListBacker value) loading,
    required TResult Function(SuccessListBacker value) success,
    required TResult Function(ErrorListBacker value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialListBacker value)? initial,
    TResult? Function(LoadingListBacker value)? loading,
    TResult? Function(SuccessListBacker value)? success,
    TResult? Function(ErrorListBacker value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialListBacker value)? initial,
    TResult Function(LoadingListBacker value)? loading,
    TResult Function(SuccessListBacker value)? success,
    TResult Function(ErrorListBacker value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingListBacker implements ListBackerState {
  const factory LoadingListBacker() = _$LoadingListBackerImpl;
}

/// @nodoc
abstract class _$$SuccessListBackerImplCopyWith<$Res> {
  factory _$$SuccessListBackerImplCopyWith(_$SuccessListBackerImpl value,
          $Res Function(_$SuccessListBackerImpl) then) =
      __$$SuccessListBackerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListBacker listBacker});

  $ListBackerCopyWith<$Res> get listBacker;
}

/// @nodoc
class __$$SuccessListBackerImplCopyWithImpl<$Res>
    extends _$ListBackerStateCopyWithImpl<$Res, _$SuccessListBackerImpl>
    implements _$$SuccessListBackerImplCopyWith<$Res> {
  __$$SuccessListBackerImplCopyWithImpl(_$SuccessListBackerImpl _value,
      $Res Function(_$SuccessListBackerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listBacker = null,
  }) {
    return _then(_$SuccessListBackerImpl(
      null == listBacker
          ? _value.listBacker
          : listBacker // ignore: cast_nullable_to_non_nullable
              as ListBacker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListBackerCopyWith<$Res> get listBacker {
    return $ListBackerCopyWith<$Res>(_value.listBacker, (value) {
      return _then(_value.copyWith(listBacker: value));
    });
  }
}

/// @nodoc

class _$SuccessListBackerImpl implements SuccessListBacker {
  const _$SuccessListBackerImpl(this.listBacker);

  @override
  final ListBacker listBacker;

  @override
  String toString() {
    return 'ListBackerState.success(listBacker: $listBacker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessListBackerImpl &&
            (identical(other.listBacker, listBacker) ||
                other.listBacker == listBacker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listBacker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessListBackerImplCopyWith<_$SuccessListBackerImpl> get copyWith =>
      __$$SuccessListBackerImplCopyWithImpl<_$SuccessListBackerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListBacker listBacker) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return success(listBacker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListBacker listBacker)? success,
    TResult? Function(String? errorMessage)? error,
  }) {
    return success?.call(listBacker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListBacker listBacker)? success,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listBacker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialListBacker value) initial,
    required TResult Function(LoadingListBacker value) loading,
    required TResult Function(SuccessListBacker value) success,
    required TResult Function(ErrorListBacker value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialListBacker value)? initial,
    TResult? Function(LoadingListBacker value)? loading,
    TResult? Function(SuccessListBacker value)? success,
    TResult? Function(ErrorListBacker value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialListBacker value)? initial,
    TResult Function(LoadingListBacker value)? loading,
    TResult Function(SuccessListBacker value)? success,
    TResult Function(ErrorListBacker value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessListBacker implements ListBackerState {
  const factory SuccessListBacker(final ListBacker listBacker) =
      _$SuccessListBackerImpl;

  ListBacker get listBacker;
  @JsonKey(ignore: true)
  _$$SuccessListBackerImplCopyWith<_$SuccessListBackerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorListBackerImplCopyWith<$Res> {
  factory _$$ErrorListBackerImplCopyWith(_$ErrorListBackerImpl value,
          $Res Function(_$ErrorListBackerImpl) then) =
      __$$ErrorListBackerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorListBackerImplCopyWithImpl<$Res>
    extends _$ListBackerStateCopyWithImpl<$Res, _$ErrorListBackerImpl>
    implements _$$ErrorListBackerImplCopyWith<$Res> {
  __$$ErrorListBackerImplCopyWithImpl(
      _$ErrorListBackerImpl _value, $Res Function(_$ErrorListBackerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorListBackerImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorListBackerImpl implements ErrorListBacker {
  const _$ErrorListBackerImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ListBackerState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorListBackerImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorListBackerImplCopyWith<_$ErrorListBackerImpl> get copyWith =>
      __$$ErrorListBackerImplCopyWithImpl<_$ErrorListBackerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListBacker listBacker) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListBacker listBacker)? success,
    TResult? Function(String? errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListBacker listBacker)? success,
    TResult Function(String? errorMessage)? error,
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
    required TResult Function(InitialListBacker value) initial,
    required TResult Function(LoadingListBacker value) loading,
    required TResult Function(SuccessListBacker value) success,
    required TResult Function(ErrorListBacker value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialListBacker value)? initial,
    TResult? Function(LoadingListBacker value)? loading,
    TResult? Function(SuccessListBacker value)? success,
    TResult? Function(ErrorListBacker value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialListBacker value)? initial,
    TResult Function(LoadingListBacker value)? loading,
    TResult Function(SuccessListBacker value)? success,
    TResult Function(ErrorListBacker value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorListBacker implements ListBackerState {
  const factory ErrorListBacker(final String? errorMessage) =
      _$ErrorListBackerImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorListBackerImplCopyWith<_$ErrorListBackerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
