import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/widgets/main_card.dart';
import 'package:netflix_api/view/widgets/main_title.dart';

ValueNotifier<List<MovieDetails>> topRatedNotifier = ValueNotifier([]);

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,required this.title, required this.listeners,
  });
  final String title;
  final ValueNotifier<List<MovieDetails>> listeners;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [ 
         MainTitle(title: title),
        sizedHeight,
       LimitedBox(
        maxHeight: 200,
         child: ValueListenableBuilder(
          valueListenable: listeners,
           builder: (context,value,_) {
             return ListView.builder(
              itemCount: listeners.value.length,
              itemBuilder: (context, index) {
                return MainCards(
                  movieDetails: value[index],
                );
              },
               scrollDirection: Axis.horizontal,
             );
           }
         ),
       ),],

    );
  }
}

