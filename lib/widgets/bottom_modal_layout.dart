import 'package:flutter/material.dart';
import 'package:marketing_cards/model/marketing_card.dart';
import 'package:marketing_cards/typography.dart';
import 'package:marketing_cards/widgets/buy_button.dart';
import 'package:marketing_cards/widgets/info_card.dart';

class BottomModalLayout extends StatelessWidget {
  const BottomModalLayout({super.key, required this.marketingCard});

  final MarketingCard marketingCard;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        marketingCard.name,
                        style: detailCardTitleStyle,
                      ),
                    ),
                    Text(
                      marketingCard.formattedPrice,
                      style: detailCardPriceStyle,
                    ),
                  ],
                ),
                Text(
                  'By ${marketingCard.vendor}',
                  style: detailCardSubtitleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  marketingCard.longDescription,
                  style: detailCardDescriptionStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const InfoCard(),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: BuyButton(
                    productId: marketingCard.id.toString(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
