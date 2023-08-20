import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';

class SearchMovies{
  Future<List<MovieDetails>> searchMovies(String name)async{
    final searchkey = Constants.search+name;
    final response = await http.get(Uri.parse(searchkey));
    if(response.statusCode == 200){
      final datas=jsonDecode(response.body)['results'] as List;
      return datas.map((e) => MovieDetails.fromJson(e)).toList();

    }else{ 
      throw Exception('Error');
    }

  }
}