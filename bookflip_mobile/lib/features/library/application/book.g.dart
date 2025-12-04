// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
  title: json['title'] as String,
  author: json['author'] as String,
  isbn: json['isbn'] as String,
  publicationYear: (json['publicationYear'] as num?)?.toInt() ?? 0,
  genre: json['genre'] as String?,
  subjects:
      (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isAvailable: json['is_in_stock'] as bool? ?? true,
);

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
  'title': instance.title,
  'author': instance.author,
  'isbn': instance.isbn,
  'publicationYear': instance.publicationYear,
  'genre': instance.genre,
  'subjects': instance.subjects,
  'is_in_stock': instance.isAvailable,
};
