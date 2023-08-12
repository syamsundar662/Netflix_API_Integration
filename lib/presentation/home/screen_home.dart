import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/home/widgets/main_card_home.dart';
import 'package:netflix_api/presentation/widgets/main_card.dart';
import 'package:netflix_api/presentation/widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainCardHome(title: 'Released In The Past Year',),
            sizedHeight,
            MainCardHome(title: 'Tranding Now',),
            sizedHeight,
            MainCardHome(title: 'Tense Dramas',),
            sizedHeight,
            MainCardHome(title: 'Top Rated ',),
          ],
        ),
      )
          );
  }
}

