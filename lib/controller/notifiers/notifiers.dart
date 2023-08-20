import 'package:flutter/material.dart';
import 'package:netflix_api/model/home_trending.dart';

ValueNotifier<List<MovieDetails>> upConmingMoviesNotifier =ValueNotifier([]);
ValueNotifier<List<MovieDetails>> nowPlayingNotifiers = ValueNotifier([]);
ValueNotifier<List<MovieDetails>> trendingNotifiers = ValueNotifier([]);
ValueNotifier<List<MovieDetails>> topRatedNotifier = ValueNotifier([]);
ValueNotifier<List<MovieDetails>> searchNotifiers = ValueNotifier([]);
ValueNotifier<List<String>> fastLaughtVideoNotofier = ValueNotifier([]);