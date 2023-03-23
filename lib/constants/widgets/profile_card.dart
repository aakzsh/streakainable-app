import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/styles.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.index});
  final index;

  @override
  Widget build(BuildContext context) {
    List tileColors = [
      AppColors.googleRed,
      AppColors.googleGreen,
      AppColors.googleYellow,
      AppColors.googleBlue
    ];
    const content = [
      {
        "title": "member since:",
        "value": "11/3/23",
      },
      {
        "title": "longest streak:",
        "value": "7",
      },
      {
        "title": "tasks completed:",
        "value": "20",
      },
      {
        "title": "total points:",
        "value": "124",
      }
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
            color: tileColors[index], borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 180,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  content[index]["title"]!,
                  style: TextStyles.cardTitle,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              content[index]["value"]!,
              style: TextStyles.cardSubtitle,
            )
          ],
        ),
      ),
    );
  }
}
