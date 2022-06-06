// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/analytics/analytics.dart' as _i2;
import '../pages/browse/browse.dart' as _i3;
import '../pages/landing/landing.dart' as _i1;
import '../pages/profile/profile.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LandingPage());
    },
    AnalyticsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AnalyticsPage());
    },
    BrowseRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BrowsePage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LandingRoute.name, path: '/', children: [
          _i5.RouteConfig(AnalyticsRouter.name,
              path: 'analytic', parent: LandingRoute.name),
          _i5.RouteConfig(BrowseRouter.name,
              path: 'browse', parent: LandingRoute.name),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute({List<_i5.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.AnalyticsPage]
class AnalyticsRouter extends _i5.PageRouteInfo<void> {
  const AnalyticsRouter() : super(AnalyticsRouter.name, path: 'analytic');

  static const String name = 'AnalyticsRouter';
}

/// generated route for
/// [_i3.BrowsePage]
class BrowseRouter extends _i5.PageRouteInfo<void> {
  const BrowseRouter() : super(BrowseRouter.name, path: 'browse');

  static const String name = 'BrowseRouter';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
