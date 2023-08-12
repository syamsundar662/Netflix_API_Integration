import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier =ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override 
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
       builder: (context, newindex, _) {
      return
      BottomNavigationBar( 
      currentIndex: newindex,
      onTap: (value) {
        indexChangeNotifier.value =value;
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedIconTheme: const IconThemeData(color: Colors.white),

      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),label:'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_sharp),label:'New & Hot'),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions,),label:'Fast Laugh'),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),label:'Search'),
        BottomNavigationBarItem(
          icon: Icon(Icons.download_for_offline,),label:'Download'),
      ]);
    },);
}} 