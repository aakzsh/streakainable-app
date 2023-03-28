import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/helper.dart';
import 'package:streakainable/constants/utils/styles.dart';
import 'package:streakainable/views/home.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    Future<void> signup(BuildContext context) async {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        // Getting users credential
        UserCredential result = await auth.signInWithCredential(authCredential);
        User? user = result.user;

        if (result != null) {
          log(result.toString());
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        } else {
          log("couldnt sign in");
        }
      }
    }

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
                onPressed: () async {
                  // await signup(context);

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
