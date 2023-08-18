import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/trending_api.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/main_card_home.dart';
import 'package:netflix_api/view/search/widgets/search_title.dart';

const image = 'https://www.themoviedb.org/t/p/w1280/2y48XTa483LRFIb5fDKOwr8DHWz.jpg';
const image2 = 'https://www.themoviedb.org/t/p/w1280/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

getTop()async{
    topRatedNotifier.value=await Api().getALlTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: 'Top Search',),
        sizedHeight,
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: topRatedNotifier,
          
            builder: (context,value,_) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>  TopSearchItemTile(moviesList: value[index],),
                  separatorBuilder: (context, index) => sizedHeight15,
                  itemCount: topRatedNotifier.value.length);
            }
          ),
        )
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.moviesList,});
 final MovieDetails moviesList;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Row( 
      children: [
        Container(
          width: screenWidth*0.35,
          height: screenWidth*0.20 ,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:  DecorationImage(image: NetworkImage(Constants.imagaPath+moviesList.backDropPath,),
            fit: BoxFit.cover)
          ),
 
        ),
        sizedWidth,
         Expanded(child: Text(moviesList.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
        const Icon(Icons.play_circle_outline_outlined,size: 40,)
      ],
    );
  }
}
