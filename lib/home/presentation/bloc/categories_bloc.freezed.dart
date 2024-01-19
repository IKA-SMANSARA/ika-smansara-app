// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
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
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CategoriesEvent.started()';
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

abstract class _Started implements CategoriesEvent {
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
    extends _$CategoriesEventCopyWithImpl<$Res, _$FetchDataImpl>
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
    return 'CategoriesEvent.fetchData()';
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

abstract class _FetchData implements CategoriesEvent {
  const factory _FetchData() = _$FetchDataImpl;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCategories,
    required TResult Function(List<CategoryItemResponse>? listCategoryItem)
        successCategories,
    required TResult Function(String? errorMessage) errorCategories,
    required TResult Function() loadingCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCategories,
    TResult? Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult? Function(String? errorMessage)? errorCategories,
    TResult? Function()? loadingCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCategories,
    TResult Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult Function(String? errorMessage)? errorCategories,
    TResult Function()? loadingCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategories value) initialCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
    required TResult Function(LoadingCategories value) loadingCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategories value)? initialCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
    TResult? Function(LoadingCategories value)? loadingCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategories value)? initialCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    TResult Function(LoadingCategories value)? loadingCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCategoriesImplCopyWith<$Res> {
  factory _$$InitialCategoriesImplCopyWith(_$InitialCategoriesImpl value,
          $Res Function(_$InitialCategoriesImpl) then) =
      __$$InitialCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$InitialCategoriesImpl>
    implements _$$InitialCategoriesImplCopyWith<$Res> {
  __$$InitialCategoriesImplCopyWithImpl(_$InitialCategoriesImpl _value,
      $Res Function(_$InitialCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCategoriesImpl implements InitialCategories {
  const _$InitialCategoriesImpl();

  @override
  String toString() {
    return 'CategoriesState.initialCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCategories,
    required TResult Function(List<CategoryItemResponse>? listCategoryItem)
        successCategories,
    required TResult Function(String? errorMessage) errorCategories,
    required TResult Function() loadingCategories,
  }) {
    return initialCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCategories,
    TResult? Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult? Function(String? errorMessage)? errorCategories,
    TResult? Function()? loadingCategories,
  }) {
    return initialCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCategories,
    TResult Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult Function(String? errorMessage)? errorCategories,
    TResult Function()? loadingCategories,
    required TResult orElse(),
  }) {
    if (initialCategories != null) {
      return initialCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategories value) initialCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
    required TResult Function(LoadingCategories value) loadingCategories,
  }) {
    return initialCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategories value)? initialCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
    TResult? Function(LoadingCategories value)? loadingCategories,
  }) {
    return initialCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategories value)? initialCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    TResult Function(LoadingCategories value)? loadingCategories,
    required TResult orElse(),
  }) {
    if (initialCategories != null) {
      return initialCategories(this);
    }
    return orElse();
  }
}

abstract class InitialCategories implements CategoriesState {
  const factory InitialCategories() = _$InitialCategoriesImpl;
}

/// @nodoc
abstract class _$$SuccessCategoriesImplCopyWith<$Res> {
  factory _$$SuccessCategoriesImplCopyWith(_$SuccessCategoriesImpl value,
          $Res Function(_$SuccessCategoriesImpl) then) =
      __$$SuccessCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryItemResponse>? listCategoryItem});
}

/// @nodoc
class __$$SuccessCategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$SuccessCategoriesImpl>
    implements _$$SuccessCategoriesImplCopyWith<$Res> {
  __$$SuccessCategoriesImplCopyWithImpl(_$SuccessCategoriesImpl _value,
      $Res Function(_$SuccessCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCategoryItem = freezed,
  }) {
    return _then(_$SuccessCategoriesImpl(
      listCategoryItem: freezed == listCategoryItem
          ? _value._listCategoryItem
          : listCategoryItem // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCategoriesImpl implements SuccessCategories {
  const _$SuccessCategoriesImpl(
      {final List<CategoryItemResponse>? listCategoryItem = const []})
      : _listCategoryItem = listCategoryItem;

  final List<CategoryItemResponse>? _listCategoryItem;
  @override
  @JsonKey()
  List<CategoryItemResponse>? get listCategoryItem {
    final value = _listCategoryItem;
    if (value == null) return null;
    if (_listCategoryItem is EqualUnmodifiableListView)
      return _listCategoryItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesState.successCategories(listCategoryItem: $listCategoryItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCategoriesImpl &&
            const DeepCollectionEquality()
                .equals(other._listCategoryItem, _listCategoryItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCategoryItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCategoriesImplCopyWith<_$SuccessCategoriesImpl> get copyWith =>
      __$$SuccessCategoriesImplCopyWithImpl<_$SuccessCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCategories,
    required TResult Function(List<CategoryItemResponse>? listCategoryItem)
        successCategories,
    required TResult Function(String? errorMessage) errorCategories,
    required TResult Function() loadingCategories,
  }) {
    return successCategories(listCategoryItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCategories,
    TResult? Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult? Function(String? errorMessage)? errorCategories,
    TResult? Function()? loadingCategories,
  }) {
    return successCategories?.call(listCategoryItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCategories,
    TResult Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult Function(String? errorMessage)? errorCategories,
    TResult Function()? loadingCategories,
    required TResult orElse(),
  }) {
    if (successCategories != null) {
      return successCategories(listCategoryItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategories value) initialCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
    required TResult Function(LoadingCategories value) loadingCategories,
  }) {
    return successCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategories value)? initialCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
    TResult? Function(LoadingCategories value)? loadingCategories,
  }) {
    return successCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategories value)? initialCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    TResult Function(LoadingCategories value)? loadingCategories,
    required TResult orElse(),
  }) {
    if (successCategories != null) {
      return successCategories(this);
    }
    return orElse();
  }
}

abstract class SuccessCategories implements CategoriesState {
  const factory SuccessCategories(
          {final List<CategoryItemResponse>? listCategoryItem}) =
      _$SuccessCategoriesImpl;

  List<CategoryItemResponse>? get listCategoryItem;
  @JsonKey(ignore: true)
  _$$SuccessCategoriesImplCopyWith<_$SuccessCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCategoriesImplCopyWith<$Res> {
  factory _$$ErrorCategoriesImplCopyWith(_$ErrorCategoriesImpl value,
          $Res Function(_$ErrorCategoriesImpl) then) =
      __$$ErrorCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$ErrorCategoriesImpl>
    implements _$$ErrorCategoriesImplCopyWith<$Res> {
  __$$ErrorCategoriesImplCopyWithImpl(
      _$ErrorCategoriesImpl _value, $Res Function(_$ErrorCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCategoriesImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCategoriesImpl implements ErrorCategories {
  const _$ErrorCategoriesImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CategoriesState.errorCategories(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCategoriesImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCategoriesImplCopyWith<_$ErrorCategoriesImpl> get copyWith =>
      __$$ErrorCategoriesImplCopyWithImpl<_$ErrorCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCategories,
    required TResult Function(List<CategoryItemResponse>? listCategoryItem)
        successCategories,
    required TResult Function(String? errorMessage) errorCategories,
    required TResult Function() loadingCategories,
  }) {
    return errorCategories(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCategories,
    TResult? Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult? Function(String? errorMessage)? errorCategories,
    TResult? Function()? loadingCategories,
  }) {
    return errorCategories?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCategories,
    TResult Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult Function(String? errorMessage)? errorCategories,
    TResult Function()? loadingCategories,
    required TResult orElse(),
  }) {
    if (errorCategories != null) {
      return errorCategories(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategories value) initialCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
    required TResult Function(LoadingCategories value) loadingCategories,
  }) {
    return errorCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategories value)? initialCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
    TResult? Function(LoadingCategories value)? loadingCategories,
  }) {
    return errorCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategories value)? initialCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    TResult Function(LoadingCategories value)? loadingCategories,
    required TResult orElse(),
  }) {
    if (errorCategories != null) {
      return errorCategories(this);
    }
    return orElse();
  }
}

abstract class ErrorCategories implements CategoriesState {
  const factory ErrorCategories(final String? errorMessage) =
      _$ErrorCategoriesImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCategoriesImplCopyWith<_$ErrorCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCategoriesImplCopyWith<$Res> {
  factory _$$LoadingCategoriesImplCopyWith(_$LoadingCategoriesImpl value,
          $Res Function(_$LoadingCategoriesImpl) then) =
      __$$LoadingCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$LoadingCategoriesImpl>
    implements _$$LoadingCategoriesImplCopyWith<$Res> {
  __$$LoadingCategoriesImplCopyWithImpl(_$LoadingCategoriesImpl _value,
      $Res Function(_$LoadingCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCategoriesImpl implements LoadingCategories {
  const _$LoadingCategoriesImpl();

  @override
  String toString() {
    return 'CategoriesState.loadingCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCategories,
    required TResult Function(List<CategoryItemResponse>? listCategoryItem)
        successCategories,
    required TResult Function(String? errorMessage) errorCategories,
    required TResult Function() loadingCategories,
  }) {
    return loadingCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCategories,
    TResult? Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult? Function(String? errorMessage)? errorCategories,
    TResult? Function()? loadingCategories,
  }) {
    return loadingCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCategories,
    TResult Function(List<CategoryItemResponse>? listCategoryItem)?
        successCategories,
    TResult Function(String? errorMessage)? errorCategories,
    TResult Function()? loadingCategories,
    required TResult orElse(),
  }) {
    if (loadingCategories != null) {
      return loadingCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCategories value) initialCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
    required TResult Function(LoadingCategories value) loadingCategories,
  }) {
    return loadingCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCategories value)? initialCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
    TResult? Function(LoadingCategories value)? loadingCategories,
  }) {
    return loadingCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCategories value)? initialCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    TResult Function(LoadingCategories value)? loadingCategories,
    required TResult orElse(),
  }) {
    if (loadingCategories != null) {
      return loadingCategories(this);
    }
    return orElse();
  }
}

abstract class LoadingCategories implements CategoriesState {
  const factory LoadingCategories() = _$LoadingCategoriesImpl;
}
