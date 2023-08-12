import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/search/widgets/search_title.dart';

const image = 'https://www.themoviedb.org/t/p/w1280/2y48XTa483LRFIb5fDKOwr8DHWz.jpg';
const image2 = 'https://www.themoviedb.org/t/p/w1280/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: 'Top Search',),
        sizedHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => sizedHeight15,
              itemCount: 10),
        )
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

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
            image: const DecorationImage(image: NetworkImage(image),
            fit: BoxFit.cover)
          ),

        ),
        sizedWidth,
        const Expanded(child: Text('The Meg 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
        const Icon(Icons.play_circle_outline_outlined,size: 40,)
      ],
    );
  }
}
