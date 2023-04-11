// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:marketing_cards/screens/home_page.dart' as _i2;
import 'package:marketing_cards/screens/story_page.dart' as _i1;

abstract class $RootRouter extends _i3.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    StoryRoute.name: (routeData) {
      final args = routeData.argsAs<StoryRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.StoryPage(
          key: args.key,
          storyId: args.storyId,
        ),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MyHomePage(
          key: args.key,
          appName: args.appName,
          onBack: args.onBack,
          pplBalance: args.pplBalance,
          onPayClick: args.onPayClick,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.StoryPage]
class StoryRoute extends _i3.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    _i4.Key? key,
    required int storyId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          StoryRoute.name,
          args: StoryRouteArgs(
            key: key,
            storyId: storyId,
          ),
          initialChildren: children,
        );

  static const String name = 'StoryRoute';

  static const _i3.PageInfo<StoryRouteArgs> page =
      _i3.PageInfo<StoryRouteArgs>(name);
}

class StoryRouteArgs {
  const StoryRouteArgs({
    this.key,
    required this.storyId,
  });

  final _i4.Key? key;

  final int storyId;

  @override
  String toString() {
    return 'StoryRouteArgs{key: $key, storyId: $storyId}';
  }
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomeRoute extends _i3.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i4.Key? key,
    required String appName,
    required void Function() onBack,
    required double pplBalance,
    required void Function(String) onPayClick,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MyHomeRoute.name,
          args: MyHomeRouteArgs(
            key: key,
            appName: appName,
            onBack: onBack,
            pplBalance: pplBalance,
            onPayClick: onPayClick,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const _i3.PageInfo<MyHomeRouteArgs> page =
      _i3.PageInfo<MyHomeRouteArgs>(name);
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    required this.appName,
    required this.onBack,
    required this.pplBalance,
    required this.onPayClick,
  });

  final _i4.Key? key;

  final String appName;

  final void Function() onBack;

  final double pplBalance;

  final void Function(String) onPayClick;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, appName: $appName, onBack: $onBack, pplBalance: $pplBalance, onPayClick: $onPayClick}';
  }
}
