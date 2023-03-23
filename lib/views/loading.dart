import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/helper.dart';
import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/welcome.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Welcome())));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetPaths.sdg,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Helper.loading,
                style: TextStyles.semiHeader,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "...",
                style: TextStyles.semiHeader,
              )
            ],
          ),
        ),
      ),
    );
  }
}
