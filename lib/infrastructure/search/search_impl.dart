
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_flash/domain/downloads/core/api_endpoint.dart';
import 'package:stream_flash/domain/search/model/search_respo/search_respo.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:stream_flash/domain/search/model/search_service.dart';


@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResult>> searchMovies({required String searchQuery}) async {
    // TODO: implement searchMovies
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.search, queryParameters: {'query': searchQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResult.fromJson(response.data);
       
        //print(response.data['results']);
        return Right(result);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      //print(e.toString());
      return Left(MainFailure.ClientFailure());
    }
  }
  
}