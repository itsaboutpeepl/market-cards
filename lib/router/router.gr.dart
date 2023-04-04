// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/home_page.dart' as _i1;
import '../screens/story_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.MyHomePage(
          key: args.key,
          appName: args.appName,
          onBack: args.onBack,
          pplBalance: args.pplBalance,
          onPayClick: args.onPayClick,
        ),
      );
    },
    StoryRoute.name: (routeData) {
      final args = routeData.argsAs<StoryRouteArgs>();
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.StoryPage(
          key: args.key,
          storyId: args.storyId,
        ),
        transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          MyHomeRoute.name,
          path: 'homepage',
        ),
        _i3.RouteConfig(
          StoryRoute.name,
          path: '/story-page',
        ),
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'homepage',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i3.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i4.Key? key,
    required String appName,
    required void Function() onBack,
    required double pplBalance,
    required void Function(String) onPayClick,
  }) : super(
          MyHomeRoute.name,
          path: 'homepage',
          args: MyHomeRouteArgs(
            key: key,
            appName: appName,
            onBack: onBack,
            pplBalance: pplBalance,
            onPayClick: onPayClick,
          ),
        );

  static const String name = 'MyHomeRoute';
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

/// generated route for
/// [_i2.StoryPage]
class StoryRoute extends _i3.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    _i4.Key? key,
    required int storyId,
  }) : super(
          StoryRoute.name,
          path: '/story-page',
          args: StoryRouteArgs(
            key: key,
            storyId: storyId,
          ),
        );

  static const String name = 'StoryRoute';
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
