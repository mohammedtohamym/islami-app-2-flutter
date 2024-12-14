import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/tabs/hadith/hadith_tab.dart';
import 'package:islami_app/tabs/quran/quran_tab.dart';
import 'package:islami_app/tabs/radio/radio_tab.dart';
import 'package:islami_app/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/tabs/time/time_tab.dart';

class IslmaiHomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<IslmaiHomeScreen> createState() => _IslmaiHomeScreenState();
}

class _IslmaiHomeScreenState extends State<IslmaiHomeScreen> {
  int selectedIndex = 0;
  List<String> backgroundImages = [
    'assets/images/quran_bg.png',
    'assets/images/hadith_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/time_bg.png',
  ];

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(backgroundImages[selectedIndex],
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.primaryDark
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: BuildBottomNavigationBarItem(index: 0, name: 'quran'),
                    label: 'Quran'
                ),
                BottomNavigationBarItem(
                    icon: BuildBottomNavigationBarItem(index: 1, name: 'hadith'),
                    label: 'Hadith'
                ),
                BottomNavigationBarItem(
                    icon: BuildBottomNavigationBarItem(index: 2, name: 'sebha'),
                    label: 'Sebha'
                ),
                BottomNavigationBarItem(
                    icon: BuildBottomNavigationBarItem(index: 3, name: 'radio'),
                    label: 'Radio'
                ),
                BottomNavigationBarItem(
                    icon: BuildBottomNavigationBarItem(index: 4, name: 'time'),
                    label: 'Time'
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  Widget BuildBottomNavigationBarItem ({required int index, required String name}){
    return selectedIndex == index ?
    Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        decoration: BoxDecoration(
          color: AppColors.blackBg,
          borderRadius: BorderRadius.circular(66),
        ),
        child: ImageIcon(AssetImage('assets/images/icon_$name.png'))
    )
        :
    ImageIcon(AssetImage('assets/images/icon_$name.png'));
  }

}
