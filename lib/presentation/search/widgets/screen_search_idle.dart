import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start   ,
      children: [
        Text('Top Search', 
        style:TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold
        ) ,),
        sizedHeight,
        ListView.separated(
          itemBuilder: (context, index) => TopSearchItemTile(), 
          separatorBuilder: (context, index) => sizedHeight ,
           itemCount: 10 
           )
      ],

    ); 
  }
}
class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.sizeOf(context).size.width;
    return const Row(
      children: [
       
      ],
    );
  }
}