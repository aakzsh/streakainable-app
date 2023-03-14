import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/styles.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
              child: Text(
            "profile stats",
            style: TextStyles.titleStyle,
          )),
          Text(
            "your facts and figures",
            style: TextStyles.subtitleStyle,
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
