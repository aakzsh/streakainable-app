import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/helper.dart';
import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/stats.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:scratcher/scratcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 48,
              ),
              const Text(
                Helper.home,
                style: TextStyles.titleStyle,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Stats())));
                  },
                  icon: const Icon(Icons.bar_chart))
            ],
          ),
          const Text(
            Helper.homeSubtitle,
            style: TextStyles.subtitleStyle,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        Helper.scratchAndGetNew,
                        style: TextStyles.homeHeader,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Scratcher(
                    brushSize: 30,
                    threshold: 50,
                    color: Colors.red,
                    onChange: (value) => log("Scratch progress: $value%"),
                    onThreshold: () => log("Threshold reached, you won!"),
                    child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        Helper.ongoingTasks,
                        style: TextStyles.homeHeader,
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryText),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              leading: const Icon(Icons.list),
                              trailing: const Text(
                                "GFG",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ),
                              title: Text("List item $index"));
                        }),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
