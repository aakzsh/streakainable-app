import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/helper.dart';
import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                AssetPaths.logo,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                Helper.appTitle,
                style: TextStyles.titleStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "gamify sustainability.\none task at a time",
                style: TextStyles.subtitleStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Login())));
              },
              child: Column(
                children: [
                  Text(
                    "get started",
                    style: TextStyles.subHeading
                        .copyWith(color: AppColors.googleGreen),
                  ),
                  Image.asset(
                    AssetPaths.arrowIcon,
                    scale: 4,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
