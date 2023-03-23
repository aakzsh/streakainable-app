import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streakainable/constants/utils/colors.dart';
import 'package:streakainable/constants/utils/helper.dart';
import './views/loading.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Helper.appTitle,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryBackground,
          brightness: Brightness.light,
          textTheme: GoogleFonts.jostTextTheme()),
      darkTheme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: const Loading(),
    );
  }
}
