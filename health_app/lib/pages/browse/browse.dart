import 'package:flutter/material.dart';
import 'package:health_app/resources/colors.dart';
import 'package:health_app/resources/size_constants.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({Key? key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBgColor,
        elevation: 0,
        title: Center(
          child: Text(
            "Browse",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w900),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 241, 241)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    Text(
                      "Search",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    const Icon(Icons.filter_alt, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SBC.xxLH,
            Text(
              "Top workouts 💪",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w600, color: dividerColor),
            ),
            SBC.xxLH,
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 340,
                  decoration: BoxDecoration(
                      color: Color(0xFFD0EFF9),
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SBC.lH,
                      Text(
                        "Weight Loss\ntraining",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w800),
                      ),
                      SBC.xxLH,
                      Text(
                        "Full body workout",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            )
            // Row
          ],
        ),
      ),
    );
  }
}
