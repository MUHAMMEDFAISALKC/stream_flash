import 'package:json_annotation/json_annotation.dart';
import 'package:stream_flash/core/strings.dart';

part 'search_respo.g.dart';

@JsonSerializable()
class SearchResult {
  @JsonKey(name: 'results')
  List<SearchRespo>? results;

  SearchResult({this.results});

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return _$SearchResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}

@JsonSerializable()
class SearchRespo {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;




  SearchRespo({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespoToJson(this);
}
