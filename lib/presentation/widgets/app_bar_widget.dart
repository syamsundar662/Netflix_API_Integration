import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        sizedWidth,
        const Text('Downloads',
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        const Spacer(), 
        const Icon(Icons.cast),
        sizedWidth,
        Container( 
          height: 21,
          width: 25, 
          color: Colors.lightBlue,
        ),
        sizedWidth,
      ],
    );
  }
}