import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/helper.dart';
import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/home.dart';
import 'package:streakainable/constants/widgets/profile_card.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 48,
              ),
              Text(
                "profile stats",
                style: TextStyles.titleStyle,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Home())));
                  },
                  icon: Icon(Icons.home_outlined))
            ],
          ),
          Text(
            "your facts and figures",
            style: TextStyles.subtitleStyle,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "🔥",
                      style: TextStyles.streak,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "7 days",
                      style: TextStyles.semiHeader,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(AssetPaths.pfp),
                  radius: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "@frooti",
                      style: TextStyles.username,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ImageIcon(AssetImage(AssetPaths.editIcon))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "share profile",
                      style: TextStyles.contentFaded,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ImageIcon(
                      AssetImage(AssetPaths.shareIcon),
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                ProfileCard(index: 0),
                ProfileCard(index: 1),
                ProfileCard(index: 2),
                ProfileCard(index: 3),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
