import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:health_app/resources/colors.dart';
import 'package:health_app/routes/router.gr.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: scaffoldBgColor,
      routes: const [AnalyticsRouter(), BrowseRouter(), ProfileRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            selectedItemColor: primaryColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  backgroundColor: primaryColor,
                  icon: const Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Browse",
                  backgroundColor: primaryColor,
                  icon: const Icon(Icons.bar_chart_outlined)),
              BottomNavigationBarItem(
                  label: "Profile",
                  backgroundColor: primaryColor,
                  icon: const Icon(Icons.person))
            ]);
      },
    );
  }
}
