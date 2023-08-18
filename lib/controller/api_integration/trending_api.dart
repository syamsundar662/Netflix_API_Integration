import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';

class Api {
  Future<List<MovieDetails>> getALlTrending() async {
    String trending = Constants.trendingNow+Constants.apikey;
    final response = await http.get(Uri.parse(trending));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      return decodedData.map((movie) => MovieDetails.fromJson(movie)).toList();
    } else {
      throw Exception("Something went wrong");
    }
  }
}
