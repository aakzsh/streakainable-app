import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/helper.dart';

import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Center(
              child: Text(
            Helper.login,
            style: TextStyles.titleStyle,
          )),
          const Text(
            Helper.loginSubtitle,
            style: TextStyles.subtitleStyle,
          ),
          const Expanded(child: SizedBox()),
          Expanded(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                height: 70,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Home())));
                },
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
                    const Text(
                      Helper.loginWithGoogle,
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
