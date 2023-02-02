// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadEventTearOff {
  const _$DownloadEventTearOff();

  _GetDownloadImages getDownloadImages() {
    return const _GetDownloadImages();
  }
}

/// @nodoc
const $DownloadEvent = _$DownloadEventTearOff();

/// @nodoc
mixin _$DownloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  final DownloadEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadEvent) _then;
}

/// @nodoc
abstract class _$GetDownloadImagesCopyWith<$Res> {
  factory _$GetDownloadImagesCopyWith(
          _GetDownloadImages value, $Res Function(_GetDownloadImages) then) =
      __$GetDownloadImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDownloadImagesCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res>
    implements _$GetDownloadImagesCopyWith<$Res> {
  __$GetDownloadImagesCopyWithImpl(
      _GetDownloadImages _value, $Res Function(_GetDownloadImages) _then)
      : super(_value, (v) => _then(v as _GetDownloadImages));

  @override
  _GetDownloadImages get _value => super._value as _GetDownloadImages;
}

/// @nodoc

class _$_GetDownloadImages implements _GetDownloadImages {
  const _$_GetDownloadImages();

  @override
  String toString() {
    return 'DownloadEvent.getDownloadImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetDownloadImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) {
    return getDownloadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadImages,
  }) {
    return getDownloadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) {
    return getDownloadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
  }) {
    return getDownloadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImages implements DownloadEvent {
  const factory _GetDownloadImages() = _$_GetDownloadImages;
}

/// @nodoc
class _$DownloadStateTearOff {
  const _$DownloadStateTearOff();

  _DownloadState call(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) {
    return _DownloadState(
      isLoading: isLoading,
      downloads: downloads,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $DownloadState = _$DownloadStateTearOff();

/// @nodoc
mixin _$DownloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadStateCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$DownloadStateCopyWith(
          _DownloadState value, $Res Function(_DownloadState) then) =
      __$DownloadStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class __$DownloadStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadStateCopyWith<$Res> {
  __$DownloadStateCopyWithImpl(
      _DownloadState _value, $Res Function(_DownloadState) _then)
      : super(_value, (v) => _then(v as _DownloadState));

  @override
  _DownloadState get _value => super._value as _DownloadState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_DownloadState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      {required this.isLoading,
      this.downloads,
      required this.downloadsFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Downloads>? downloads;
  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.downloads, downloads) &&
            const DeepCollectionEquality().equals(
                other.downloadsFailureOrSuccessOption,
                downloadsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(downloads),
      const DeepCollectionEquality().hash(downloadsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$DownloadStateCopyWith<_DownloadState> get copyWith =>
      __$DownloadStateCopyWithImpl<_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _$_DownloadState;

  @override
  bool get isLoading;
  @override
  List<Downloads>? get downloads;
  @override
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$DownloadStateCopyWith<_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
