import 'package:auto_route/auto_route.dart';
import 'package:marketing_cards/screens/home_page.dart';
import 'package:marketing_cards/screens/story_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true, path: 'homepage'),
    CustomRoute(
      page: StoryPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    RedirectRoute(path: '/', redirectTo: 'homepage')
  ],
)
class $AppRouter {}
