import 'dart:convert';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/model/top_rated.dart';
import 'package:http/http.dart' as http;

class TopRatedApi{
  Future<List<MovieDetails>> getTopRatedImages()async{
  String api =  Constants.topRated+Constants.apikey;
    final response = await http.get(Uri.parse(api));
    if (response.statusCode==200){
      final json = jsonDecode(response.body)['results'] as List;
      return json.map((e) => MovieDetails.fromJson(e)).toList();
    }else {
      throw Exception("something went wrong");
    }
  }
}