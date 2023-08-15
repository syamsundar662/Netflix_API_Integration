import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/home/widgets/home_main_card.dart';
import 'package:netflix_api/presentation/home/widgets/home_top_bar_background.dart';
import 'package:netflix_api/presentation/home/widgets/main_card_home.dart';
import 'package:netflix_api/presentation/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  HomeMainCard(),
                  MainCardHome(
                    title: 'Released In The Past Year',
                  ),
                  sizedHeight,
                  MainCardHome(
                    title: 'Tranding Now',
                  ),
                  sizedHeight,
                  NumberTitleCard(),
                  sizedHeight,
                  MainCardHome(
                    title: 'Tense Dramas',
                  ),
                  sizedHeight,
                  MainCardHome(
                    title: 'Top Rated ',
                  ),
                ],
              ),
              scrollNotifier.value ? const HomeTopBarBackground() : sizedHeight
            ],
          ),
        );
      },
    ));
  }
}
