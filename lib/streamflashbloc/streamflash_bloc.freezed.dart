// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streamflash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StreamflashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bottomIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bottomIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bottomIndexChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BottomIndex value) bottomIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BottomIndex value)? bottomIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomIndex value)? bottomIndexChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamflashEventCopyWith<$Res> {
  factory $StreamflashEventCopyWith(
          StreamflashEvent value, $Res Function(StreamflashEvent) then) =
      _$StreamflashEventCopyWithImpl<$Res, StreamflashEvent>;
}

/// @nodoc
class _$StreamflashEventCopyWithImpl<$Res, $Val extends StreamflashEvent>
    implements $StreamflashEventCopyWith<$Res> {
  _$StreamflashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BottomIndexCopyWith<$Res> {
  factory _$$BottomIndexCopyWith(
          _$BottomIndex value, $Res Function(_$BottomIndex) then) =
      __$$BottomIndexCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BottomIndexCopyWithImpl<$Res>
    extends _$StreamflashEventCopyWithImpl<$Res, _$BottomIndex>
    implements _$$BottomIndexCopyWith<$Res> {
  __$$BottomIndexCopyWithImpl(
      _$BottomIndex _value, $Res Function(_$BottomIndex) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BottomIndex with DiagnosticableTreeMixin implements BottomIndex {
  const _$BottomIndex();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamflashEvent.bottomIndexChange()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'StreamflashEvent.bottomIndexChange'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BottomIndex);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bottomIndexChange,
  }) {
    return bottomIndexChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bottomIndexChange,
  }) {
    return bottomIndexChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bottomIndexChange,
    required TResult orElse(),
  }) {
    if (bottomIndexChange != null) {
      return bottomIndexChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BottomIndex value) bottomIndexChange,
  }) {
    return bottomIndexChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BottomIndex value)? bottomIndexChange,
  }) {
    return bottomIndexChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomIndex value)? bottomIndexChange,
    required TResult orElse(),
  }) {
    if (bottomIndexChange != null) {
      return bottomIndexChange(this);
    }
    return orElse();
  }
}

abstract class BottomIndex implements StreamflashEvent {
  const factory BottomIndex() = _$BottomIndex;
}

/// @nodoc
mixin _$StreamflashState {
  int get selectedIndex => throw _privateConstructorUsedError;
  int get changedValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreamflashStateCopyWith<StreamflashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamflashStateCopyWith<$Res> {
  factory $StreamflashStateCopyWith(
          StreamflashState value, $Res Function(StreamflashState) then) =
      _$StreamflashStateCopyWithImpl<$Res, StreamflashState>;
  @useResult
  $Res call({int selectedIndex, int changedValue});
}

/// @nodoc
class _$StreamflashStateCopyWithImpl<$Res, $Val extends StreamflashState>
    implements $StreamflashStateCopyWith<$Res> {
  _$StreamflashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? changedValue = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      changedValue: null == changedValue
          ? _value.changedValue
          : changedValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamflashStateCopyWith<$Res>
    implements $StreamflashStateCopyWith<$Res> {
  factory _$$_StreamflashStateCopyWith(
          _$_StreamflashState value, $Res Function(_$_StreamflashState) then) =
      __$$_StreamflashStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, int changedValue});
}

/// @nodoc
class __$$_StreamflashStateCopyWithImpl<$Res>
    extends _$StreamflashStateCopyWithImpl<$Res, _$_StreamflashState>
    implements _$$_StreamflashStateCopyWith<$Res> {
  __$$_StreamflashStateCopyWithImpl(
      _$_StreamflashState _value, $Res Function(_$_StreamflashState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? changedValue = null,
  }) {
    return _then(_$_StreamflashState(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      changedValue: null == changedValue
          ? _value.changedValue
          : changedValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StreamflashState
    with DiagnosticableTreeMixin
    implements _StreamflashState {
  const _$_StreamflashState(
      {required this.selectedIndex, required this.changedValue});

  @override
  final int selectedIndex;
  @override
  final int changedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamflashState(selectedIndex: $selectedIndex, changedValue: $changedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamflashState'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('changedValue', changedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamflashState &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.changedValue, changedValue) ||
                other.changedValue == changedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, changedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamflashStateCopyWith<_$_StreamflashState> get copyWith =>
      __$$_StreamflashStateCopyWithImpl<_$_StreamflashState>(this, _$identity);
}

abstract class _StreamflashState implements StreamflashState {
  const factory _StreamflashState(
      {required final int selectedIndex,
      required final int changedValue}) = _$_StreamflashState;

  @override
  int get selectedIndex;
  @override
  int get changedValue;
  @override
  @JsonKey(ignore: true)
  _$$_StreamflashStateCopyWith<_$_StreamflashState> get copyWith =>
      throw _privateConstructorUsedError;
}
