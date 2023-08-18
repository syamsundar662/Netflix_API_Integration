import 'dart:convert';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:http/http.dart' as http;

class NowPlaying{

  Future<List<MovieDetails>> getALLNowPlaying()async{
    String nowPlaying = Constants.nowPlaying+Constants.apikey;
    final response = await http.get(Uri.parse(nowPlaying));
    if(response.statusCode == 200){
      final decodedDatas = jsonDecode(response.body)['results'] as List;
      return decodedDatas.map((e) => MovieDetails.fromJson(e)).toList();
    }else{
      throw Exception('error found');
    }
  }
}