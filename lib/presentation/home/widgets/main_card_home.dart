import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/widgets/main_card.dart';
import 'package:netflix_api/presentation/widgets/main_title.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [ 
         MainTitle(title: title),
        sizedHeight,
       LimitedBox(
        maxHeight: 200,
         child: ListView(
           scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) => const MainCards()),
         ),
       ),],

    );
  }
}

