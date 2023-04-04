import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marketing_cards/model/marketing_card.dart';
import 'package:marketing_cards/story/story_image.dart';
import 'package:marketing_cards/widgets/detail_layout_bottom_view.dart';

class DetailLayout extends StatefulWidget {
  const DetailLayout({
    super.key,
    required this.marketingCard,
    required this.currentImageIndex,
  });

  final MarketingCard marketingCard;
  final int currentImageIndex;
  @override
  State<DetailLayout> createState() => _DetailLayoutState();
}

class _DetailLayoutState extends State<DetailLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Hero(
            tag: widget.marketingCard.id,
            child: StoryImage(
              fit: BoxFit.cover,
              key: Key(
                widget.marketingCard.photos[widget.currentImageIndex].id
                    .toString(),
              ),
              imageProvider: CachedNetworkImageProvider(
                widget.marketingCard.photos[widget.currentImageIndex].url,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: DetailLayoutBottomView(
            marketingCard: widget.marketingCard,
          ),
        )
      ],
    );
  }
}
