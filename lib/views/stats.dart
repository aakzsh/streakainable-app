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
                Helper.stats,
                style: TextStyles.titleStyle,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Home())));
                  },
                  icon: const Icon(Icons.home_outlined))
            ],
          ),
          const Text(
            Helper.statsSubtitle,
            style: TextStyles.subtitleStyle,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      Helper.fire,
                      style: TextStyles.streak,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "7 ${Helper.days}",
                      style: TextStyles.semiHeader,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(AssetPaths.pfp),
                  radius: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "@aakash",
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
                  children: const [
                    Text(
                      Helper.shareProfile,
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
                const SizedBox(
                  height: 40,
                ),
                const ProfileCard(index: 0),
                const ProfileCard(index: 1),
                const ProfileCard(index: 2),
                const ProfileCard(index: 3),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
