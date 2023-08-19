import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_api/controller/api_integration/now_playing.dart';
import 'package:netflix_api/controller/api_integration/top_rated_api.dart';
import 'package:netflix_api/controller/api_integration/trending_api.dart';
import 'package:netflix_api/controller/api_integration/upcoming.dart';
import 'package:netflix_api/controller/notifiers/notifiers.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/view/home/widgets/home_main_card.dart';
import 'package:netflix_api/view/home/widgets/home_top_bar_background.dart';
import 'package:netflix_api/view/home/widgets/main_card_home.dart';
import 'package:netflix_api/view/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);


class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
   getAllListerners()async{
    topRatedNotifier.value=await TopRatedApi().getTopRatedImages();
    upConmingMoviesNotifier.value=await Upcoming().getUpcomigMovies();
    nowPlayingNotifiers.value=await NowPlaying().getALLNowPlaying();
    trendingNotifiers.value=await Api().getALlTrending();
  }

 
  @override
  Widget build(BuildContext context) {
    getAllListerners();
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
                children:  [
                  const HomeMainCard(),
                  MainCardHome(
                    title: 'Released In The Past Year',
                    listeners: topRatedNotifier,
                    
                  ),
                  sizedHeight,
                   MainCardHome(
                    title: 'Trending Now',
                    listeners: trendingNotifiers,
                    
                  ),
                  sizedHeight,
                  const NumberTitleCard(),
                  sizedHeight,
                   MainCardHome(
                    title: 'Tense Dramas',
                    listeners: nowPlayingNotifiers,
                   
                  ),
                  sizedHeight,
                   MainCardHome(
                    title: 'Top Rated ',
                    listeners: upConmingMoviesNotifier,
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
