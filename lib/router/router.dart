import 'package:auto_route/auto_route.dart';
import 'package:marketing_cards/router/router.gr.dart';

@AutoRouterConfig()
class RootRouter extends $RootRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: MyHomeRoute.page, path: '/'),
    AutoRoute(page: StoryRoute.page),
    RedirectRoute(path: '*', redirectTo: '/')
  ];
}
