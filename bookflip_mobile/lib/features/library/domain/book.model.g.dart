// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeriesInfo _$SeriesInfoFromJson(Map<String, dynamic> json) => _SeriesInfo(
  name: json['name'] as String,
  number: (json['number'] as num).toInt(),
);

Map<String, dynamic> _$SeriesInfoToJson(_SeriesInfo instance) =>
    <String, dynamic>{'name': instance.name, 'number': instance.number};

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
  title: json['title'] as String,
  author: json['author'] as String,
  description: json['description'] as String,
  isbn: json['isbn'] as String?,
  condition: $enumDecode(_$BookConditionEnumMap, json['condition']),
  type: $enumDecode(_$BookTypeEnumMap, json['type']),
  format: $enumDecode(_$BookFormatEnumMap, json['format']),
  series: json['series'] == null
      ? null
      : SeriesInfo.fromJson(json['series'] as Map<String, dynamic>),
  ownerId: json['ownerId'] as String,
  price: (json['price'] as num?)?.toDouble(),
  isAvailable: json['isAvailable'] as bool,
  listingType: $enumDecode(_$ListingTypeEnumMap, json['listingType']),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  lastModified: const TimestampConverter().fromJson(
    json['lastModified'] as Timestamp,
  ),
  views: (json['views'] as num).toInt(),
);

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
  'title': instance.title,
  'author': instance.author,
  'description': instance.description,
  'isbn': instance.isbn,
  'condition': _$BookConditionEnumMap[instance.condition]!,
  'type': _$BookTypeEnumMap[instance.type]!,
  'format': _$BookFormatEnumMap[instance.format]!,
  'series': instance.series?.toJson(),
  'ownerId': instance.ownerId,
  'price': instance.price,
  'isAvailable': instance.isAvailable,
  'listingType': _$ListingTypeEnumMap[instance.listingType]!,
  'images': instance.images,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'lastModified': const TimestampConverter().toJson(instance.lastModified),
  'views': instance.views,
};

const _$BookConditionEnumMap = {
  BookCondition.newCondition: 'new',
  BookCondition.likeNew: 'like_new',
  BookCondition.good: 'good',
  BookCondition.fair: 'fair',
  BookCondition.poor: 'poor',
};

const _$BookTypeEnumMap = {
  BookType.original: 'original',
  BookType.copy: 'copy',
};

const _$BookFormatEnumMap = {
  BookFormat.hardcover: 'hardcover',
  BookFormat.paperback: 'paperback',
  BookFormat.pocket: 'pocket',
};

const _$ListingTypeEnumMap = {
  ListingType.sell: 'sell',
  ListingType.trade: 'trade',
  ListingType.both: 'both',
};
