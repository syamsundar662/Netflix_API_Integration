import 'package:flutter/material.dart';
import 'package:netflix_api/view/downloads/screen_downloads.dart';
import 'package:netflix_api/view/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_api/view/home/screen_home.dart';
import 'package:netflix_api/view/main_page/widgets/bottom_nav.dart';
import 'package:netflix_api/view/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_api/view/search/screen_search.dart';

class ScreenHomePage extends StatelessWidget {
   ScreenHomePage({super.key});
  final pages = [ 
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
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
          bottomNavigationBar: const BottomNavigationWidget());

          
    
  }
}