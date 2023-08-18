import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/top_rated_api.dart';
import 'package:netflix_api/controller/api_integration/upcoming.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/main_card_home.dart';
import 'package:netflix_api/view/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix_api/view/new_and_hot/widgets/everyones_watching.dart';
ValueNotifier<List<MovieDetails>> upConmingMoviesNotifier =ValueNotifier([]);
class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});
   getUpcomig() async{
    upConmingMoviesNotifier.value =await Upcoming().getUpcomigMovies();
  }
  getEveryOnesWatching()async{
    topRatedNotifier.value= await TopRatedApi().getTopRatedImages();
  }
  @override
  Widget build(BuildContext context) {
    getUpcomig(); 
    getEveryOnesWatching();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'New & Hot',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(Icons.cast),
            sizedWidth,
            Container(
              height: 22,
              width: 24,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png?20201013161117"))),
            ),
            sizedWidth,
          ],
          bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: const [
                Tab(
                  text: '  🍿 Coming Soon    ',
                ),
                Tab(
                  text: "  👀 Everyone's Watching   ",
                ),
              ],
              // isScrollable: true,
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              overlayColor:
                  MaterialStatePropertyAll(Colors.white.withOpacity(0))),
        ),
        body: TabBarView(children: [
          _tabBarComingSoon(context),
          _tabBarEveryonesWatch(),
        ]),
      ), 
    );
  }

  Widget _tabBarComingSoon(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: upConmingMoviesNotifier,
      builder: (context,value,_) {
        return ListView.builder(
          shrinkWrap: true,  
          itemBuilder: (context, index) =>  ComingSoonWidget(upcomingList: value[index]),
          itemCount: upConmingMoviesNotifier.value.length,
        );
      }
    );
  }

  Widget _tabBarEveryonesWatch() {
    return ValueListenableBuilder(
      valueListenable: topRatedNotifier,
      builder: (context,value,_) {
        return ListView.builder(
          shrinkWrap: true,  
          itemBuilder: (context, index) =>  EveryonesWatching(EveryonesWatchingList: value[index]),
          itemCount: topRatedNotifier.value.length,
        );
      }
    );
  }
}
