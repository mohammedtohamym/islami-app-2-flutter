import 'package:flutter/material.dart';
import 'package:islami_app/home/home_scren.dart';
import 'package:islami_app/tabs/quran/sura_details_screen.dart';
import 'package:islami_app/theme_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: MyThemeData.myThemeData,
      routes: {
        IslmaiHomeScreen.routeName : (context) => IslmaiHomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen()
      },
      initialRoute: IslmaiHomeScreen.routeName,
    );
  }
}
