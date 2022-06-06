import 'package:auto_route/auto_route.dart';
import 'package:health_app/pages/analytics/analytics.dart';
import 'package:health_app/pages/landing/landing.dart';

import '../pages/browse/browse.dart';
import '../pages/profile/profile.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: LandingPage, initial: true, children: [
    AutoRoute(page: AnalyticsPage, name: 'analyticsRouter', path: 'analytic'),
    AutoRoute(page: BrowsePage, name: 'browseRouter', path: 'browse'),
    AutoRoute(page: ProfilePage, name: 'profileRouter', path: 'profile'),
  ]),
])
class $AppRouter {}
