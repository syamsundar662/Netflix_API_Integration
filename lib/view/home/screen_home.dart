import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_api/controller/api_integration/trending_api.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/home_main_card.dart';
import 'package:netflix_api/view/home/widgets/home_top_bar_background.dart';
import 'package:netflix_api/view/home/widgets/main_card_home.dart';
import 'package:netflix_api/view/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late Future<List<MovieDetails>> trendingMovies;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    trendingMovies =Api().getALlTrending();
  }
  
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
                children:  [
                  SizedBox(
                    child: FutureBuilder(future: trendingMovies , 
                    builder: (context, snapshot) {
                      if(snapshot.hasError){
                        return Center(child: Text(snapshot.error.toString()),);
                      }else if(snapshot.hasData){
                        return HomeMainCard(snapshot: snapshot,);
                      } else {
                        return const Center(child: CircularProgressIndicator(),);
                      }
                    },),
                  ),
                  sizedHeight,
                  // HomeMainCard(),
                  MainCardHome(
                    title: 'Released In The Past Year',
                    
                  ),
                  sizedHeight,
                   MainCardHome(
                    title: 'Trending Now',
                    
                  ),
                  sizedHeight,
                  const NumberTitleCard(),
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
