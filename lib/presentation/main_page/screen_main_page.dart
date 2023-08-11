import 'package:flutter/material.dart';
import 'package:netflix_api/presentation/downloads/screen_downloads.dart';
import 'package:netflix_api/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_api/presentation/home/screen_home.dart';
import 'package:netflix_api/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_api/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_api/presentation/search/screen_search.dart';

class ScreenHomePage extends StatelessWidget {
   ScreenHomePage({super.key});
  final pages = [ 
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier, 
        builder: (context, value, _) {
        return pages[value];
      },),
          bottomNavigationBar: BottomNavigationWidget());
    
  }
}