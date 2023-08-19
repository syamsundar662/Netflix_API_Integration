import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/trending_api.dart';
import 'package:netflix_api/controller/notifiers/notifiers.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/search/widgets/search_title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  get() async {
    topRatedNotifier.value = await Api().getALlTrending();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: 'Movies & TV'),
        sizedHeight,
        Expanded(
            child: ValueListenableBuilder(
          valueListenable: topRatedNotifier,
          builder: (context, value, child) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.5,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MainCard(movielist: value[index]);
              },
              itemCount: topRatedNotifier.value.length,
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.movielist});
  final MovieDetails movielist;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(Constants.imagaPath + movielist.posterPath),
              fit: BoxFit.cover)),
    );
  }
}
