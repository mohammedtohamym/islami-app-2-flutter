import 'package:animated_transform/animated_transform.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double _degree = 0 ;
  int tasbeehCounter = 0;
  String text = '';
  List<String> tasbeehText = ['سبحان الله', 'الحمد الله', ' الله أكبر'];



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.4;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Logo.png'),
          Text('ٍسبح اسم ربك الأعلى',style: TextStyle(color: Colors.white, fontSize: 42),),
          Image.asset('assets/images/sebha_head.png'),
          Stack(
            alignment: Alignment.center,
            children: [Center(
              child: AnimatedTransform(
                child:
                    GestureDetector(
                  onTap: (){
                    setTasbeehCounter();
                  _degree += 360/33;
                  tasbeehCounter ++;
                  setState(() {

                  });
                },
                  child: Image.asset('assets/images/Sebha.png', height: height   ,),
                    ),

                rotate: _degree,
                duration: Duration(seconds: 1),),
            ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('$text',style: TextStyle(color: Colors.white, fontSize: 42),),
                  Text('$tasbeehCounter', style: TextStyle(color: Colors.white, fontSize: 42))
                ],
              ),
            ]
          ),
        ],
      ),
      // color: Colors.red;
    );
  }
  void setTasbeehCounter(){
    if(tasbeehCounter < 33){
      text = tasbeehText[0];
    }else if (tasbeehCounter < 66){
      text = tasbeehText[1];
    }else if(tasbeehCounter < 99){
      text = tasbeehText[2];
    }else {
      text = tasbeehText[0];
      tasbeehCounter = 0;
    }
    print(text);
    print(tasbeehCounter);
  }
}