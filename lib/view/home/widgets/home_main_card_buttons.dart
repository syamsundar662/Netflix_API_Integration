
import 'package:flutter/material.dart';

class BottomBotton extends StatelessWidget {
  const BottomBotton({
    super.key,
    required this.icon,
    required this.title, 
     this.textSize = 18,
     this.iconSize = 28,
  });
  final Icon icon;
  final String title;
  final double textSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[ 
        Icon(icon.icon,size: iconSize,),
        Text(title,style:  TextStyle(fontSize: textSize),)
      ],
    );
  }
}
