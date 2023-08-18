import 'dart:convert';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:http/http.dart' as https;

class Upcoming{
  Future<List<MovieDetails>> getUpcomigMovies () async{
   const  upcomingApi = Constants.upcomingmovies+Constants.apikey;
   final response = await https.get(Uri.parse(upcomingApi));
   if(response.statusCode == 200 ){
    final json = jsonDecode(response.body)['results'] as List;
    return json.map((e) => MovieDetails.fromJson(e)).toList();
   } 
   else{
    throw Exception("Error");
   }
  }

  
}