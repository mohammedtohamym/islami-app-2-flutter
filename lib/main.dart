import 'package:flutter/material.dart';
import 'package:islami_app/home/home_scren.dart';
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
      },
      initialRoute: IslmaiHomeScreen.routeName,
    );
  }
}
