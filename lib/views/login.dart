import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/helper.dart';

import 'package:streakainable/constants/utils/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
              child: Text(
            "login",
            style: TextStyles.titleStyle,
          )),
          Text(
            "lets get your started",
            style: TextStyles.subtitleStyle,
          ),
          Expanded(child: SizedBox()),
          Expanded(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                height: 70,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColors.secondaryBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AssetPaths.google,
                      scale: 4,
                    ),
                    Text(
                      "Login with Google",
                      style: TextStyles.subHeading,
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
