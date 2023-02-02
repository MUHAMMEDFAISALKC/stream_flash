import 'package:dartz/dartz.dart';
import 'package:stream_flash/domain/downloads/core/failures/main_failure.dart';
import 'package:stream_flash/domain/downloads/models/download.dart';

abstract class DownloadRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages();
}
