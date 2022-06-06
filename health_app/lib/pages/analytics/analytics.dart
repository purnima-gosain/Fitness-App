import 'package:flutter/material.dart';
import 'package:health_app/resources/colors.dart';
import 'package:health_app/resources/size_constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  String dropDownValue = 'Calories';
  String initialValue = 'Today';
  var items = [
    'Calories',
    'Fat Burn',
    'Sunday',
    'Monday',
  ];
  var itemValue = ['Today', 'Yesterday', 'Tomorrow'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBgColor,
        elevation: 0,
        title: Center(
          child: Text(
            "Analytics",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w900),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Today",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: primaryColor, fontWeight: FontWeight.w700),
          ),
          Text(
            "Mon 26 Apr",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          dropDown(context),
          // Color(0xFFB8DEFF), Color(0xFFFFFFFF)
          Center(
              child: CircularPercentIndicator(
            backgroundColor: const Color.fromARGB(255, 237, 237, 237),
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.75,
            animation: true,
            circularStrokeCap: CircularStrokeCap.round,
            // progressColor: primaryColor,
            linearGradient: const LinearGradient(
                colors: [Color(0xFFB8DEFF), Color(0xFFFF9EDE)],
                stops: [0.0, 0.8]),
            center: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Active calories",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 184, 184, 184)),
                ),
                SBC.mH,
                RichText(
                    text: TextSpan(
                        text: "536 ",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                        children: [
                      TextSpan(
                        text: 'Cal',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      )
                    ]))
              ],
            ),
          ))
        ],
      )),
    );
  }

  Row dropDown(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 239, 239),
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: DropdownButton(
                underline: const SizedBox(),
                borderRadius: BorderRadius.circular(20),
                iconEnabledColor: primaryColor,
                value: dropDownValue,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    child: Text(
                      items,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    value: items,
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                  });
                }),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 239, 239),
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: DropdownButton(
                underline: const SizedBox(),
                borderRadius: BorderRadius.circular(20),
                iconEnabledColor: primaryColor,
                value: initialValue,
                items: itemValue.map((String itemValue) {
                  return DropdownMenuItem(
                    child: Text(
                      itemValue,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    value: itemValue,
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    initialValue = newValue!;
                  });
                }),
          ),
        ),
      ],
    );
  }
}
