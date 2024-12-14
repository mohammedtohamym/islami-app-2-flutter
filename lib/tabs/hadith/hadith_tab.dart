import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/tabs/hadith/hadith_data_model.dart';

class HadithTab extends StatefulWidget {
  
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithModel> hadithList = [];



  @override
  Widget build(BuildContext context) {
    if(hadithList.isEmpty){
      loadHadithFile();
    }
    return Container(
      child: ListView.builder(itemBuilder: (context, index){
        return Text(hadithList[index].title,
        style: TextStyle(color: AppColors.primaryDark),);
      },
      itemCount: hadithList.length,
      // scrollDirection: Axis.horizontal,
      ),
    );
  }

  void loadHadithFile()async{
    for(int i = 1 ; i <= 50; i++){
      String hadethContent = await rootBundle.loadString('assets/files/h$i.txt');
      List<String> hadithLines = hadethContent.split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      HadithModel hadithModel = HadithModel(title: title, content: hadithLines);
      hadithList.add(hadithModel);
      setState(() {

      });
    }

  }
}