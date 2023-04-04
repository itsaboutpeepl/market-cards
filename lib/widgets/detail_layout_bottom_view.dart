import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/model/marketing_card.dart';
import 'package:marketing_cards/typography.dart';

class DetailLayoutBottomView extends ConsumerStatefulWidget {
  const DetailLayoutBottomView({super.key, required this.marketingCard});

  final MarketingCard marketingCard;

  @override
  ConsumerState<DetailLayoutBottomView> createState() =>
      _DetailLayoutBottomViewState();
}

class _DetailLayoutBottomViewState
    extends ConsumerState<DetailLayoutBottomView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.8),
            Colors.white.withOpacity(0)
          ],
          stops: const [0, 0.6, 1],
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  widget.marketingCard.name,
                  style: detailCardTitleStyle,
                ),
              ),
              Text(
                widget.marketingCard.formattedPrice,
                style: detailCardTitleStyle.copyWith(fontSize: 25),
              ),
            ],
          ),
          Text(
            'By ${widget.marketingCard.vendor}',
            style: detailCardSubtitleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.marketingCard.shortDescription,
            style: detailCardDescriptionStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(Icons.keyboard_arrow_up),
                  Text(
                    'More info',
                    style: detailCardDescriptionStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.keyboard_arrow_up),
                  Text(
                    'Buy now',
                    style: detailCardDescriptionStyle,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
