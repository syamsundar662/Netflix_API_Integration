import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key,required this.heading});
  final String heading;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        sizedWidth,
         Text(heading,
        style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        const Spacer(), 
        const Icon(Icons.cast),
        sizedWidth,
        Container( 
          height: 22,
          width: 24, 
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png?20201013161117'))
          ),
        ),
        sizedWidth,
      ],
    );
  }
}