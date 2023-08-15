import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        sizedHeight,
        Row(
          children: [
            sizedWidth ,
            Icon(Icons.settings),
            Text('Smart Downloads',style: TextStyle(fontWeight: FontWeight.w500),),
          ],

        ),
      ],
    );
    
  }
}