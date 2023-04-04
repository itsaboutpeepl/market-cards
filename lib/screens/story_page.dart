import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/screens/home_page.dart';
import 'package:marketing_cards/story/page_notifier.dart';
import 'package:marketing_cards/story/story_page_view.dart';
import 'package:marketing_cards/widgets/balance_display.dart';
import 'package:marketing_cards/widgets/bottom_modal_layout.dart';
import 'package:marketing_cards/widgets/detail_layout.dart';

class StoryPage extends ConsumerStatefulWidget {
  const StoryPage({super.key, required this.storyId});

  final int storyId;

  @override
  ConsumerState<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends ConsumerState<StoryPage> {
  final storyAnimationController = ValueNotifier<IndicatorAnimationCommand>(
    IndicatorAnimationCommand.resume,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    storyAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(cardsProvider).when(
          loading: () => const ColoredBox(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) {
            return Scaffold(
              appBar: AppBar(title: const Text('Something went wrong')),
              body: Center(
                child: Text('$err'),
              ),
            );
          },
          data: (data) {
            Future.delayed(const Duration(seconds: 1), () {
              ref.read(storyIndexProvider.notifier).update(
                    data.cards.indexWhere(
                      (element) => element.id == widget.storyId,
                    ),
                  );
            });
            return Material(
              child: StoryPageView(
                initialPage: data.cards.indexWhere(
                  (element) => element.id == widget.storyId,
                ),
                itemBuilder: (_, page, story) => DetailLayout(
                  marketingCard: data.cards[page],
                  currentImageIndex: story,
                ),
                storyLength: (pageIndex) => data.cards[pageIndex].photos.length,
                pageLength: data.cards.length,
                gestureItemBuilder: (context, pageIndex, storyIndex) => Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          color: Colors.white,
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            context.router.pop();
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: BalanceDisplay(),
                      )
                    ],
                  ),
                ),
                onPageLimitReached: () => context.router.pop(),
                indicatorAnimationController: storyAnimationController,
                onSwipeUp: () => showModalBottomSheet<void>(
                  backgroundColor: Colors.grey[200],
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (_) => BottomModalLayout(
                    marketingCard: data.cards[ref.watch(
                      storyIndexProvider,
                    )],
                  ),
                ),
                onPageChanged: (page) =>
                    ref.read(storyIndexProvider.notifier).update(page),
                indicatorPadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.075,
                ),
                onPayClick: () => ref.read(onPayClickProvider).call(
                      data.cards[ref.watch(storyIndexProvider)].id.toString(),
                    ),
              ),
            );
          },
        );
  }
}
