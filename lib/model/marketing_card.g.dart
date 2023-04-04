// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketingCard _$$_MarketingCardFromJson(Map<String, dynamic> json) =>
    _$_MarketingCard(
      id: json['id'] as int,
      name: json['name'] as String,
      shortDescription: json['short_description'] as String,
      longDescription: json['long_description'] as String,
      rawPrice: json['price'] as int,
      stock: json['stock'] as int,
      vendor: json['vendor'] as String?,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MarketingCardToJson(_$_MarketingCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'long_description': instance.longDescription,
      'price': instance.rawPrice,
      'stock': instance.stock,
      'vendor': instance.vendor,
      'photos': instance.photos,
    };
