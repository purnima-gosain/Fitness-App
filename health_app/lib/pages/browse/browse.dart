import 'package:flutter/material.dart';
import 'package:health_app/core/presentation/resources/colors.dart';
import 'package:health_app/core/presentation/resources/size_constants.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SC.lH),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 241, 241, 241)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10),
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
            ),
            SBC.xxLH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SC.lH),
              child: Text(
                "Top workouts 💪",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600, color: dividerColor),
              ),
            ),
            SBC.xxLH,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  _WorkoutCard(
                    imagePath: 'assets/images/women2.png',
                    backgroundColor: Color(0xFFD0EFF9),
                  ),
                  _WorkoutCard(
                    imagePath: 'assets/images/gym.png',
                    backgroundColor: Color(0xFFFDCAFF),
                  ),
                  _WorkoutCard(
                    imagePath: 'assets/images/women1.png',
                    backgroundColor: Color(0xFFAEACF9),
                  ),
                  _WorkoutCard(
                    imagePath: 'assets/images/women2.png',
                    backgroundColor: Color(0xFF81C1FE),
                  ),
                ],
              ),
            ),
            SBC.xxLH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SC.xLH),
              child: Text(
                "Categories",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600, color: dividerColor),
              ),
            ),
            SBC.lH,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  _CategoriesCard(
                    bgColor: Color.fromARGB(255, 150, 202, 251),
                    imagePath: 'assets/images/yoga1.png',
                    text: "Yoga",
                  ),
                  _CategoriesCard(
                    bgColor: Color(0xFFFDCAFF),
                    imagePath: 'assets/images/women3.png',
                    text: "Strength\ntraning",
                  ),
                  _CategoriesCard(
                    bgColor: Color(0xFFAEACF9),
                    imagePath: 'assets/images/women4.png',
                    text: "Yoga",
                  ),
                  _CategoriesCard(
                    bgColor: Color.fromARGB(255, 150, 251, 212),
                    imagePath: 'assets/images/yoga1.png',
                    text: "Yoga",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoriesCard extends StatelessWidget {
  final Color bgColor;
  final String imagePath;
  final String text;
  const _CategoriesCard(
      {Key? key,
      required this.bgColor,
      required this.imagePath,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SC.lH),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: bgColor, borderRadius: BorderRadius.circular(35)),
          ),
          Positioned(
            bottom: 10,
            left: 5,
            child: Image.asset(
              imagePath,
              height: 150,
              width: 140,
            ),
          ),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 39, 40).withOpacity(0.2),
                borderRadius: BorderRadius.circular(35)),
          ),
          Positioned(
            bottom: 80,
            left: 40,
            child: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: scaffoldBgColor)),
          )
        ],
      ),
    );
  }
}

class _WorkoutCard extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  const _WorkoutCard(
      {Key? key, required this.imagePath, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SC.lH),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 310,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SBC.lH,
                  Text(
                    "Weight Loss\ntraining",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                  SBC.xxLH,
                  Text(
                    "Full body workout",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            child: Image.asset(
              imagePath,
              height: 200,
            ),
          ),
          const _ElevatedButtons(),
          const _ElevatedButton2()
        ],
      ),
    );
  }
}

class _ElevatedButton2 extends StatelessWidget {
  const _ElevatedButton2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: scaffoldBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Row(
            children: [
              Text("🔥"),
              Text(
                "350 Cal",
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ElevatedButtons extends StatelessWidget {
  const _ElevatedButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: scaffoldBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 08),
          child: Row(
            children: [
              const Icon(
                Icons.play_arrow_rounded,
                color: Colors.black,
              ),
              Text(
                "40 min",
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
