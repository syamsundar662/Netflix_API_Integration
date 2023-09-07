import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/number_card.dart';
import 'package:netflix_api/view/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key, required this.listeners,
  });
   final ValueNotifier<List<MovieDetails>> listeners;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Top 10 TV Show in India Today"),
        sizedHeight,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder(
            valueListenable: listeners,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return NumberCard(index: index,upcome: value[index],);
                },
              scrollDirection: Axis.horizontal,
            );
            },
          ),
        ),
      ],
    );
  }
}
