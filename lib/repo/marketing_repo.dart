import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketing_cards/model/card_faker.dart';
import 'package:marketing_cards/model/marketing_card.dart';
import 'package:riverpod/riverpod.dart';

part 'marketing_repo.freezed.dart';
part 'marketing_repo.g.dart';

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: 'http://localhost:3333/api/v1',
    ),
  ),
);

final respositoryProvider = Provider(MarketingRepo.new);

final fakerRepository = Provider(MarketingRepo.faker);

class MarketingRepo {
  MarketingRepo(this.ref, {this.isFaker = false});

  MarketingRepo.faker(this.ref, {this.isFaker = true});

  final Ref ref;
  bool isFaker;

  Future<MarketingCardsReponse> fetchCards() async {
    if (isFaker) {
      return Future.delayed(
        const Duration(seconds: 3),
        () {
          return Future.value(
            MarketingCardsReponse(
              cards: listOfMarketingCards,
              totalCount: listOfMarketingCards.length,
            ),
          );
        },
      );
    } else {
      final response =
          await ref.read(dioProvider).get<Map<String, Object?>>('/products');

      final ApiResponse response2 = ApiResponse(
        response.data!['products'] as List? ?? [],
      );

      final result = MarketingCardsReponse(
        cards: response2.results.map((e) {
          return MarketingCard.fromJson(e as Map<String, Object?>);
        }).toList(growable: false),
        totalCount: response2.results.length,
      );

      return result;
    }
  }
}

@freezed
class MarketingCardsReponse with _$MarketingCardsReponse {
  factory MarketingCardsReponse({
    required int totalCount,
    required List<MarketingCard> cards,
  }) = _MarketingCardsReponse;
}

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse(
    List<dynamic> results,
  ) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, Object?> json) =>
      _$ApiResponseFromJson(json);
}
