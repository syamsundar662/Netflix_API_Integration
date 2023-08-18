import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apikey}';

  Future<List<MovieDetails>> getALlTrending() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      print(decodedData);
      return decodedData.map((movie) => MovieDetails.fromJson(movie)).toList();
    } else {
      throw Exception("Something went wrong");
    }
  }
}
