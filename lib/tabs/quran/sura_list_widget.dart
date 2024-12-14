import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class suraListWidget extends StatelessWidget{

  late int index;
  late String suraArabicName;
  late String suraEnglishName;
  late String ayaNum;
  suraListWidget({required this.index, required this.suraArabicName,
    required this.suraEnglishName, required this.ayaNum});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/Vector_image.png'),
          Text('${index+1}', style: TextStyle(color: Colors.white))
        ],
      ),
      SizedBox(width: 20,),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(suraEnglishName, style: TextStyle(color: AppColors.white),),
                Text(ayaNum, style: TextStyle(color: AppColors.white),)
              ],
            ),
            Text(suraArabicName, style: TextStyle(color: AppColors.white),)
          ],
        ),
      )
    ],
    );
  }
}