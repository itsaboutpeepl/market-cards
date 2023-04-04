import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/model/balance_response.dart';
import 'package:marketing_cards/repo/marketing_repo.dart';
import 'package:marketing_cards/typography.dart';
import 'package:marketing_cards/widgets/card_view.dart';

export 'home_page.dart';

final cardsProvider = FutureProvider.autoDispose<MarketingCardsReponse>(
  (ref) async {
    final repository = ref.watch(respositoryProvider);
    final cardsReponse = await repository.fetchCards();
    return cardsReponse;
  },
);

// final appnameProvider = FutureProvider.autoDispose<String>(
//   (ref) async {
//     //final name = await promiseToFuture<String>(fetchAppName());
//     return 'name';
//   },
// );

final onPayClickProvider =
    StateNotifierProvider<PayClickProvider, void Function(String productId)>(
        (ref) {
  return PayClickProvider();
});

class PayClickProvider extends StateNotifier<void Function(String productId)> {
  PayClickProvider() : super((String productId) {});

  void update(void Function(String productId) onPayClick) {
    state = onPayClick;
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({
    super.key,
    required this.appName,
    required this.onBack,
    required this.pplBalance,
    required this.onPayClick,
  });

  final String appName;
  final void Function() onBack;
  final void Function(String productId) onPayClick;
  final double pplBalance;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      ref.read(balanceProvider.notifier).update(widget.pplBalance);
      ref.read(onPayClickProvider.notifier).update(widget.onPayClick);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return ref.watch(cardsProvider).when(
          loading: () => const ColoredBox(
            color: Colors.white,
            child: Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            )),
          ),
          error: (err, stack) {
            return Scaffold(
              appBar: AppBar(title: const Text('Error')),
              body: Center(
                child: Text('$err'),
              ),
            );
          },
          data: (listOfCards) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: listOfCards.totalCount,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.4,
                  ),
                  itemBuilder: (_, index) => CardView(
                    marketingCard: listOfCards.cards[index],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton.extended(
                backgroundColor: Colors.white,
                onPressed: widget.onBack,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: Colors.black,
                ),
                label: Text(
                  widget.appName,
                  style: cardTitleStyle.copyWith(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniStartFloat,
            );
          },
        );
  }
}
