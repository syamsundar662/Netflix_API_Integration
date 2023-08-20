import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/search.dart';
import 'package:netflix_api/controller/notifiers/notifiers.dart';
import 'package:netflix_api/view/search/widgets/screen_search_idle.dart';
import 'package:netflix_api/view/search/widgets/search_result.dart';


TextEditingController searchController = TextEditingController();
ValueNotifier<bool> searchNotifier = ValueNotifier(false);

class ScreenSearch extends StatelessWidget {
   ScreenSearch({super.key});

 get() async {
    searchNotifiers.value = await SearchMovies().searchMovies(searchController.text);
  }

    searchControllerFN(){
      if (searchController.text.isNotEmpty) {
        searchNotifier.value = true;
      } else {
        searchNotifier.value = false;
      }
    }
  @override 
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              onChanged: (value) {
                searchControllerFN();
                get();
              },
              controller: searchController,
              backgroundColor: Colors.grey.withOpacity(.3),
              style: const TextStyle(color: Colors.white),
              
            ),
            Expanded(
                child: ValueListenableBuilder(
              valueListenable: searchNotifier,
              builder: (context, value, child) {
                return value ? const SearchResult() : const ScreenSearchIdle();
              },
            ))
          ],
        ),
      )),
    );
  }
}