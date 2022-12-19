import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'streamflash_event.dart';
part 'streamflash_state.dart';
part 'streamflash_bloc.freezed.dart';

class StreamflashBloc extends Bloc<StreamflashEvent, StreamflashState> {
  StreamflashBloc() : super(StreamflashState.initial()) {
    on<BottomIndex>((event, emit) =>
        emit(state.copyWith(selectedIndex: state.changedValue)));
  }
}
