import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/trending_api.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/widgets/main_card.dart';
import 'package:netflix_api/view/widgets/main_title.dart';

ValueNotifier<List<MovieDetails>> topRatedNotifier = ValueNotifier([]);

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,required this.title,
  });
  final String title;
  
  getTop()async{
    topRatedNotifier.value=await Api().getALlTrending();
  }

  @override
  Widget build(BuildContext context) {
    getTop();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [ 
         MainTitle(title: title),
        sizedHeight,
       LimitedBox(
        maxHeight: 200,
         child: ValueListenableBuilder(
          valueListenable: topRatedNotifier,
           builder: (context,value,_) {
             return ListView.builder(
              itemCount: topRatedNotifier.value.length,
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

