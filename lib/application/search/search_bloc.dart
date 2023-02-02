import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:stream_flash/domain/downloads/i_download_repo.dart';
import 'package:stream_flash/domain/downloads/models/download.dart';
import 'package:stream_flash/domain/search/model/search_respo/search_respo.dart';
import 'package:stream_flash/domain/search/model/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadRepo _downloadService;
  final SearchService _searchService;

  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    // idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [], 
          idleList: state.idleList, 
          isLoading: false, 
          isError: false));
          return;
      }
      emit(
        SearchState(
          searchResultList: [], 
          idleList: [], 
          isLoading: true, 
          isError: false,)
      );
      // get trending
      final _result = await _downloadService.getDownloadImages();
      final _state = _result.fold(
        (MainFailure f) {
          emit(const SearchState(
          searchResultList: [], 
          idleList: [], 
          isLoading: false, 
          isError: true,)
      );
        }, 
      (List<Downloads> list) {
        return SearchState(
          searchResultList: [], 
          idleList: list, 
          isLoading: false, 
          isError: false,
      );
      });
      // show ui
      emit(_state!);
    });
    // search state
    on<SearchMovie>((event, emit) async {
      // Tget search api
      final _result = await _searchService.searchMovies(searchQuery: event.movieQuery);
      print(_result.toString());
      print(_result);
      final _emitState = _result.fold(
        (MainFailure sf) {
          emit(SearchState(
            searchResultList: [], 
            idleList: state.idleList, 
            isLoading: false, 
            isError: true));
        }, 
        (SearchResult sList) {
          return SearchState(
            searchResultList: sList.results!, 
            idleList: state.idleList, 
            isLoading: false, 
            isError: false);
        } );
      // show ui
      emit(_emitState!);
    });
  }
}
