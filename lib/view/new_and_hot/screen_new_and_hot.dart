import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/view/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix_api/view/new_and_hot/widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});
  @override
  Widget build(BuildContext context) {
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
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/8oojjF6p1OHR5jXz9db5IEzQdsa.jpg'))),
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
    return ListView.builder(
      shrinkWrap: true,  
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _tabBarEveryonesWatch() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const EveryonesWatching());
  }
}
