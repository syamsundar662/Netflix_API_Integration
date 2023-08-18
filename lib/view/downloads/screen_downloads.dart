import 'package:flutter/material.dart';
import 'package:netflix_api/view/downloads/widgets/section_one.dart';
import 'package:netflix_api/view/downloads/widgets/section_three.dart';
import 'package:netflix_api/view/downloads/widgets/section_two.dart';
import 'package:netflix_api/view/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [const SmartDownloads(), Secition2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBarWidgets(
            heading: 'Downloads',
          )),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) => _widgetList[index],
              separatorBuilder: (context, index) => const SizedBox(height: 25),
              itemCount: _widgetList.length)),
    );
  }
}
