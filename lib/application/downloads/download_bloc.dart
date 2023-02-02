import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:stream_flash/domain/downloads/i_download_repo.dart';
import 'package:stream_flash/domain/downloads/models/download.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final DownloadRepo _downloadRepo;
  DownloadBloc(this._downloadRepo) : super(DownloadState.initial()) {
    on<_GetDownloadImages>((event, emit) async {
      // TODO: implement event handler
      emit(state.copyWith(
          isLoading: true, downloadsFailureOrSuccessOption: none()));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadRepo.getDownloadImages();

      emit(downloadsOption.fold(
          (failure) => state.copyWith(
                isLoading: false,
                downloadsFailureOrSuccessOption: Some(Left(failure)),
              ),
          (success) => state.copyWith(
                isLoading: false,
                downloads: success,
                downloadsFailureOrSuccessOption: Some(right(success)),
              )));
    });
  }
}
