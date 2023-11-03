// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarouselEvent {
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
abstract class $CarouselEventCopyWith<$Res> {
  factory $CarouselEventCopyWith(
          CarouselEvent value, $Res Function(CarouselEvent) then) =
      _$CarouselEventCopyWithImpl<$Res, CarouselEvent>;
}

/// @nodoc
class _$CarouselEventCopyWithImpl<$Res, $Val extends CarouselEvent>
    implements $CarouselEventCopyWith<$Res> {
  _$CarouselEventCopyWithImpl(this._value, this._then);

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
    extends _$CarouselEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CarouselEvent.started()';
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

abstract class _Started implements CarouselEvent {
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
    extends _$CarouselEventCopyWithImpl<$Res, _$_FetchData>
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
    return 'CarouselEvent.fetchData()';
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

abstract class _FetchData implements CarouselEvent {
  const factory _FetchData() = _$_FetchData;
}

/// @nodoc
mixin _$CarouselState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCarousel,
    required TResult Function(List<CarouselItemResponse>? listCarouselItem)
        successCarousel,
    required TResult Function(String? errorMessage) errorCarousel,
    required TResult Function() loadingCarousel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCarousel,
    TResult? Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult? Function(String? errorMessage)? errorCarousel,
    TResult? Function()? loadingCarousel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCarousel,
    TResult Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult Function(String? errorMessage)? errorCarousel,
    TResult Function()? loadingCarousel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCarousel value) initialCarousel,
    required TResult Function(SuccessCarousel value) successCarousel,
    required TResult Function(ErrorCarousel value) errorCarousel,
    required TResult Function(LoadingCarousel value) loadingCarousel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCarousel value)? initialCarousel,
    TResult? Function(SuccessCarousel value)? successCarousel,
    TResult? Function(ErrorCarousel value)? errorCarousel,
    TResult? Function(LoadingCarousel value)? loadingCarousel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCarousel value)? initialCarousel,
    TResult Function(SuccessCarousel value)? successCarousel,
    TResult Function(ErrorCarousel value)? errorCarousel,
    TResult Function(LoadingCarousel value)? loadingCarousel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselStateCopyWith<$Res> {
  factory $CarouselStateCopyWith(
          CarouselState value, $Res Function(CarouselState) then) =
      _$CarouselStateCopyWithImpl<$Res, CarouselState>;
}

/// @nodoc
class _$CarouselStateCopyWithImpl<$Res, $Val extends CarouselState>
    implements $CarouselStateCopyWith<$Res> {
  _$CarouselStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCarouselCopyWith<$Res> {
  factory _$$InitialCarouselCopyWith(
          _$InitialCarousel value, $Res Function(_$InitialCarousel) then) =
      __$$InitialCarouselCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCarouselCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$InitialCarousel>
    implements _$$InitialCarouselCopyWith<$Res> {
  __$$InitialCarouselCopyWithImpl(
      _$InitialCarousel _value, $Res Function(_$InitialCarousel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCarousel implements InitialCarousel {
  const _$InitialCarousel();

  @override
  String toString() {
    return 'CarouselState.initialCarousel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCarousel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCarousel,
    required TResult Function(List<CarouselItemResponse>? listCarouselItem)
        successCarousel,
    required TResult Function(String? errorMessage) errorCarousel,
    required TResult Function() loadingCarousel,
  }) {
    return initialCarousel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCarousel,
    TResult? Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult? Function(String? errorMessage)? errorCarousel,
    TResult? Function()? loadingCarousel,
  }) {
    return initialCarousel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCarousel,
    TResult Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult Function(String? errorMessage)? errorCarousel,
    TResult Function()? loadingCarousel,
    required TResult orElse(),
  }) {
    if (initialCarousel != null) {
      return initialCarousel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCarousel value) initialCarousel,
    required TResult Function(SuccessCarousel value) successCarousel,
    required TResult Function(ErrorCarousel value) errorCarousel,
    required TResult Function(LoadingCarousel value) loadingCarousel,
  }) {
    return initialCarousel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCarousel value)? initialCarousel,
    TResult? Function(SuccessCarousel value)? successCarousel,
    TResult? Function(ErrorCarousel value)? errorCarousel,
    TResult? Function(LoadingCarousel value)? loadingCarousel,
  }) {
    return initialCarousel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCarousel value)? initialCarousel,
    TResult Function(SuccessCarousel value)? successCarousel,
    TResult Function(ErrorCarousel value)? errorCarousel,
    TResult Function(LoadingCarousel value)? loadingCarousel,
    required TResult orElse(),
  }) {
    if (initialCarousel != null) {
      return initialCarousel(this);
    }
    return orElse();
  }
}

abstract class InitialCarousel implements CarouselState {
  const factory InitialCarousel() = _$InitialCarousel;
}

/// @nodoc
abstract class _$$SuccessCarouselCopyWith<$Res> {
  factory _$$SuccessCarouselCopyWith(
          _$SuccessCarousel value, $Res Function(_$SuccessCarousel) then) =
      __$$SuccessCarouselCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarouselItemResponse>? listCarouselItem});
}

/// @nodoc
class __$$SuccessCarouselCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$SuccessCarousel>
    implements _$$SuccessCarouselCopyWith<$Res> {
  __$$SuccessCarouselCopyWithImpl(
      _$SuccessCarousel _value, $Res Function(_$SuccessCarousel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCarouselItem = freezed,
  }) {
    return _then(_$SuccessCarousel(
      listCarouselItem: freezed == listCarouselItem
          ? _value._listCarouselItem
          : listCarouselItem // ignore: cast_nullable_to_non_nullable
              as List<CarouselItemResponse>?,
    ));
  }
}

/// @nodoc

class _$SuccessCarousel implements SuccessCarousel {
  const _$SuccessCarousel(
      {final List<CarouselItemResponse>? listCarouselItem = const []})
      : _listCarouselItem = listCarouselItem;

  final List<CarouselItemResponse>? _listCarouselItem;
  @override
  @JsonKey()
  List<CarouselItemResponse>? get listCarouselItem {
    final value = _listCarouselItem;
    if (value == null) return null;
    if (_listCarouselItem is EqualUnmodifiableListView)
      return _listCarouselItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarouselState.successCarousel(listCarouselItem: $listCarouselItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCarousel &&
            const DeepCollectionEquality()
                .equals(other._listCarouselItem, _listCarouselItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCarouselItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCarouselCopyWith<_$SuccessCarousel> get copyWith =>
      __$$SuccessCarouselCopyWithImpl<_$SuccessCarousel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCarousel,
    required TResult Function(List<CarouselItemResponse>? listCarouselItem)
        successCarousel,
    required TResult Function(String? errorMessage) errorCarousel,
    required TResult Function() loadingCarousel,
  }) {
    return successCarousel(listCarouselItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCarousel,
    TResult? Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult? Function(String? errorMessage)? errorCarousel,
    TResult? Function()? loadingCarousel,
  }) {
    return successCarousel?.call(listCarouselItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCarousel,
    TResult Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult Function(String? errorMessage)? errorCarousel,
    TResult Function()? loadingCarousel,
    required TResult orElse(),
  }) {
    if (successCarousel != null) {
      return successCarousel(listCarouselItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCarousel value) initialCarousel,
    required TResult Function(SuccessCarousel value) successCarousel,
    required TResult Function(ErrorCarousel value) errorCarousel,
    required TResult Function(LoadingCarousel value) loadingCarousel,
  }) {
    return successCarousel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCarousel value)? initialCarousel,
    TResult? Function(SuccessCarousel value)? successCarousel,
    TResult? Function(ErrorCarousel value)? errorCarousel,
    TResult? Function(LoadingCarousel value)? loadingCarousel,
  }) {
    return successCarousel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCarousel value)? initialCarousel,
    TResult Function(SuccessCarousel value)? successCarousel,
    TResult Function(ErrorCarousel value)? errorCarousel,
    TResult Function(LoadingCarousel value)? loadingCarousel,
    required TResult orElse(),
  }) {
    if (successCarousel != null) {
      return successCarousel(this);
    }
    return orElse();
  }
}

abstract class SuccessCarousel implements CarouselState {
  const factory SuccessCarousel(
      {final List<CarouselItemResponse>? listCarouselItem}) = _$SuccessCarousel;

  List<CarouselItemResponse>? get listCarouselItem;
  @JsonKey(ignore: true)
  _$$SuccessCarouselCopyWith<_$SuccessCarousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCarouselCopyWith<$Res> {
  factory _$$ErrorCarouselCopyWith(
          _$ErrorCarousel value, $Res Function(_$ErrorCarousel) then) =
      __$$ErrorCarouselCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCarouselCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$ErrorCarousel>
    implements _$$ErrorCarouselCopyWith<$Res> {
  __$$ErrorCarouselCopyWithImpl(
      _$ErrorCarousel _value, $Res Function(_$ErrorCarousel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorCarousel(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorCarousel implements ErrorCarousel {
  const _$ErrorCarousel(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CarouselState.errorCarousel(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCarousel &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCarouselCopyWith<_$ErrorCarousel> get copyWith =>
      __$$ErrorCarouselCopyWithImpl<_$ErrorCarousel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCarousel,
    required TResult Function(List<CarouselItemResponse>? listCarouselItem)
        successCarousel,
    required TResult Function(String? errorMessage) errorCarousel,
    required TResult Function() loadingCarousel,
  }) {
    return errorCarousel(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCarousel,
    TResult? Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult? Function(String? errorMessage)? errorCarousel,
    TResult? Function()? loadingCarousel,
  }) {
    return errorCarousel?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCarousel,
    TResult Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult Function(String? errorMessage)? errorCarousel,
    TResult Function()? loadingCarousel,
    required TResult orElse(),
  }) {
    if (errorCarousel != null) {
      return errorCarousel(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCarousel value) initialCarousel,
    required TResult Function(SuccessCarousel value) successCarousel,
    required TResult Function(ErrorCarousel value) errorCarousel,
    required TResult Function(LoadingCarousel value) loadingCarousel,
  }) {
    return errorCarousel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCarousel value)? initialCarousel,
    TResult? Function(SuccessCarousel value)? successCarousel,
    TResult? Function(ErrorCarousel value)? errorCarousel,
    TResult? Function(LoadingCarousel value)? loadingCarousel,
  }) {
    return errorCarousel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCarousel value)? initialCarousel,
    TResult Function(SuccessCarousel value)? successCarousel,
    TResult Function(ErrorCarousel value)? errorCarousel,
    TResult Function(LoadingCarousel value)? loadingCarousel,
    required TResult orElse(),
  }) {
    if (errorCarousel != null) {
      return errorCarousel(this);
    }
    return orElse();
  }
}

abstract class ErrorCarousel implements CarouselState {
  const factory ErrorCarousel(final String? errorMessage) = _$ErrorCarousel;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCarouselCopyWith<_$ErrorCarousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCarouselCopyWith<$Res> {
  factory _$$LoadingCarouselCopyWith(
          _$LoadingCarousel value, $Res Function(_$LoadingCarousel) then) =
      __$$LoadingCarouselCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCarouselCopyWithImpl<$Res>
    extends _$CarouselStateCopyWithImpl<$Res, _$LoadingCarousel>
    implements _$$LoadingCarouselCopyWith<$Res> {
  __$$LoadingCarouselCopyWithImpl(
      _$LoadingCarousel _value, $Res Function(_$LoadingCarousel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCarousel implements LoadingCarousel {
  const _$LoadingCarousel();

  @override
  String toString() {
    return 'CarouselState.loadingCarousel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCarousel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialCarousel,
    required TResult Function(List<CarouselItemResponse>? listCarouselItem)
        successCarousel,
    required TResult Function(String? errorMessage) errorCarousel,
    required TResult Function() loadingCarousel,
  }) {
    return loadingCarousel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialCarousel,
    TResult? Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult? Function(String? errorMessage)? errorCarousel,
    TResult? Function()? loadingCarousel,
  }) {
    return loadingCarousel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialCarousel,
    TResult Function(List<CarouselItemResponse>? listCarouselItem)?
        successCarousel,
    TResult Function(String? errorMessage)? errorCarousel,
    TResult Function()? loadingCarousel,
    required TResult orElse(),
  }) {
    if (loadingCarousel != null) {
      return loadingCarousel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCarousel value) initialCarousel,
    required TResult Function(SuccessCarousel value) successCarousel,
    required TResult Function(ErrorCarousel value) errorCarousel,
    required TResult Function(LoadingCarousel value) loadingCarousel,
  }) {
    return loadingCarousel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCarousel value)? initialCarousel,
    TResult? Function(SuccessCarousel value)? successCarousel,
    TResult? Function(ErrorCarousel value)? errorCarousel,
    TResult? Function(LoadingCarousel value)? loadingCarousel,
  }) {
    return loadingCarousel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCarousel value)? initialCarousel,
    TResult Function(SuccessCarousel value)? successCarousel,
    TResult Function(ErrorCarousel value)? errorCarousel,
    TResult Function(LoadingCarousel value)? loadingCarousel,
    required TResult orElse(),
  }) {
    if (loadingCarousel != null) {
      return loadingCarousel(this);
    }
    return orElse();
  }
}

abstract class LoadingCarousel implements CarouselState {
  const factory LoadingCarousel() = _$LoadingCarousel;
}
