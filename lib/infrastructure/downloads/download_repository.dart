import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_flash/domain/downloads/core/api_endpoint.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:stream_flash/domain/downloads/i_download_repo.dart';
import 'package:stream_flash/domain/downloads/models/download.dart';

late List<Downloads> downloadList;

@LazySingleton(as: DownloadRepo)
class DownloadRepository implements DownloadRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages() async {
    // TODO: implement getDownloadImages
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        downloadList = (response.data['results'] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();
        print(response.data['results']);
        return Right(downloadList);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      print(e.toString());
      return Left(MainFailure.ClientFailure());
    }
  }
}
