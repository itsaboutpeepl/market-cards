import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marketing_cards/model/marketing_card.dart';
import 'package:marketing_cards/router/router.gr.dart';
import 'package:marketing_cards/typography.dart';

class CardView extends StatefulWidget {
  const CardView({super.key, required this.marketingCard});

  final MarketingCard marketingCard;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView>
    with SingleTickerProviderStateMixin {
  double _scale = 1;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTap: () {
        _controller.forward().then((value) {
          _controller.reverse().then((value) {
            context.router.push(
              StoryRoute(storyId: widget.marketingCard.id),
            );
          });
        });
      },
      child: Transform.scale(
        scale: _scale,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (_, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                        tag: widget.marketingCard.id,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget.marketingCard.photos.first.url,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black.withOpacity(0),
                      ],
                      stops: const [0, 0.35],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Text(
                  widget.marketingCard.name,
                  style: cardTitleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
