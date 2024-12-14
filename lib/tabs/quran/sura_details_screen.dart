import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/tabs/quran/sura_content_item.dart';
import 'package:islami_app/tabs/quran/sura_data_model.dart';

class SuraDetailsScreen extends StatefulWidget {

  static const String routeName = 'sura_detials_screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty) {loadSuraFile(args.index) ;}
    return Scaffold(
      appBar: AppBar(
        title: Text(args.suraEnglishName, style: TextStyle(
          color: AppColors.primaryDark
        ),),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.black,
            child: Image.asset('assets/images/details_bg.png', width: double.infinity,
            height: double.infinity, fit: BoxFit.fill,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 17,),
              Text(args.suraArabicName, style: TextStyle(color: AppColors.primaryDark, fontSize: 22),textAlign: TextAlign.center,),
              Expanded(
                child: verses.isEmpty?
                 Center(
                   child: CircularProgressIndicator(),
                 )
                :
                ListView.builder(itemBuilder: (context,index){
                  return SuraContentItem(content: verses[index]);
                },
                itemCount: verses.length,),
              ),

            ],
          )
        ],
      ),
    );
  }

  void loadSuraFile(int index) async{
    String suraContent = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> suraLines = suraContent.split('\n');
    for(int i = 0; i < suraLines.length; i++){
      print(suraLines[i]);
    }
    verses = suraLines;
    setState(() {

    });
  }
}
