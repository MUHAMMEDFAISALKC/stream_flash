part of 'streamflash_bloc.dart';

@freezed
class StreamflashState with _$StreamflashState {
  const factory StreamflashState(
      {required int selectedIndex,
      required int changedValue}) = _StreamflashState;
  factory StreamflashState.initial() =>
      StreamflashState(selectedIndex: 0, changedValue: 0);
}
