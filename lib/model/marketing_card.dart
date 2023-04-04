import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketing_cards/model/photos.dart';

part 'marketing_card.freezed.dart';
part 'marketing_card.g.dart';

@freezed
class MarketingCard with _$MarketingCard {
  factory MarketingCard({
    required int id,
    required String name,
    @JsonKey(name: 'short_description') required String shortDescription,
    @JsonKey(name: 'long_description') required String longDescription,
    @JsonKey(name: 'price') required int rawPrice,
    required int stock,
    required String? vendor,
    required List<Photos> photos,
  }) = _MarketingCard;

  const MarketingCard._();

  factory MarketingCard.fromJson(Map<String, Object?> json) =>
      _$MarketingCardFromJson(json);

  String get formattedPrice => '£${(rawPrice / 100).toStringAsFixed(2)}';
}
