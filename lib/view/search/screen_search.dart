import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/view/search/widgets/screen_search_idle.dart';
import 'package:netflix_api/view/search/widgets/search_result.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}
class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> searchNotifier = ValueNotifier(false);
    TextEditingController searchController = TextEditingController();

    searchController.addListener((){
      if(searchController.text.isNotEmpty){
        searchNotifier.value=true;
      }else{
        searchNotifier.value=false;
      }
    });
    return  Scaffold( 
      body: SafeArea(child: Padding( 
        padding: const EdgeInsets.all(10),
        child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start   ,
          children: [
            CupertinoSearchTextField(
              controller: searchController,
              backgroundColor: Colors.grey.withOpacity(.3),
              style: const TextStyle(color: Colors.white),
            ) ,
             Expanded (child: ValueListenableBuilder(
              valueListenable: searchNotifier,
              builder: (context, value, child) {
                return value? const SearchResult():const ScreenSearchIdle();
              },
              
              )
              ) 
          ],
        ), 
      )),
          ); 
  }
} 