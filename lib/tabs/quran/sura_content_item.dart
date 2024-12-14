import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SuraContentItem extends StatelessWidget {
  String content ;
  int index;
  int? pressedIndex;
  SuraContentItem({required this.content, required this.index, this.pressedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primaryDark, width: 2),
          color: pressedIndex == index ? Color(0x57e2cf80): Colors.transparent,
      ),
      child: Text('${content} [${index+1}]', style: TextStyle(
        color: AppColors.primaryDark,
        fontSize: 18
      ),
      textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
