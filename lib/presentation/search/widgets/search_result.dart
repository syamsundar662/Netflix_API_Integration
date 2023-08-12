import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/search/widgets/screen_search_idle.dart';
import 'package:netflix_api/presentation/search/widgets/search_title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: 'Movies & TV'),
        sizedHeight,
        Expanded(child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1/1.5,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        shrinkWrap: true,
        children: List.generate(20, (index) {
          return const MainCard();
        }),      
        ))
      ],

    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(image: NetworkImage(image,),fit: BoxFit.cover)
      ),

    );
  }
}