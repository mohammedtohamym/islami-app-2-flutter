import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/tabs/quran/sura_data_model.dart';

class suraListWidget extends StatelessWidget{

  SuraModel suraModel;
  suraListWidget({required this.suraModel });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/Vector_image.png'),
          Text('${suraModel.index+1}', style: TextStyle(color: Colors.white))
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
                Text(suraModel.suraEnglishName, style: TextStyle(color: AppColors.white),),
                Text(suraModel.numOfVerses, style: TextStyle(color: AppColors.white),)
              ],
            ),
            Text(suraModel.suraArabicName, style: TextStyle(color: AppColors.white),)
          ],
        ),
      )
    ],
    );
  }
}