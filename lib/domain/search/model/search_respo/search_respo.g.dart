// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchRespo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchRespo _$SearchRespoFromJson(Map<String, dynamic> json) => SearchRespo(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchRespoToJson(SearchRespo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
