import 'package:stream_flash/core/strings.dart';
import 'package:stream_flash/infrastructure/api_key.dart';

class ApiEndPoint {
  static const downloads = '${baseUrl}/trending/all/day?api_key=$api_key';
  static const search = '${baseUrl}/search/movie?api_key=$api_key';
}
