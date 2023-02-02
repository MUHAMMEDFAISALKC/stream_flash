

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:stream_flash/domain/search/model/search_respo/search_respo.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResult>> searchMovies({
    required String searchQuery
  });
}