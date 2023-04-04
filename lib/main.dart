import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:marketing_cards/router/router.gr.dart';

// void main() {
//   runApp(
//     const ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }

// final appnameProvider = StateProvider<String>(
//   (ref) {
//     return 'name';
//   },
// );

class MarketingCards extends ConsumerStatefulWidget {
  const MarketingCards({
    super.key,
    required this.appName,
    required this.onBack,
    required this.onPayClick,
    required this.pplBalance,
  });

  final String appName;
  final void Function() onBack;
  final void Function(String productId) onPayClick;
  final double pplBalance;
  // final void Function() onPayClick;

  @override
  ConsumerState<MarketingCards> createState() => _MarketingCardsState();
}

class _MarketingCardsState extends ConsumerState<MarketingCards> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        title: 'Marketing Cards',
        routerDelegate: _appRouter.delegate(
          initialRoutes: [
            MyHomeRoute(
              appName: widget.appName,
              onBack: widget.onBack,
              pplBalance: widget.pplBalance,
              onPayClick: widget.onPayClick,
            )
          ],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
