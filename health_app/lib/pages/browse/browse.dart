import 'package:flutter/material.dart';
import 'package:health_app/resources/colors.dart';

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
      body: SingleChildScrollView(),
    );
  }
}
