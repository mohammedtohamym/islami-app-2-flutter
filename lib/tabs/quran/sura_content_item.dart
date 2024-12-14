import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class SuraContentItem extends StatelessWidget {
  String content ;
  SuraContentItem({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primaryDark, width: 2)
      ),
    );
  }
}
