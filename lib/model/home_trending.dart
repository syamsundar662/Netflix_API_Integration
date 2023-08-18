class MovieDetails {
  String title;
  String backDropPath;
  String orginalTitle;
  String posterPath;
  String overView;
  String releaseDate;

  MovieDetails(
      {required this.title,
      required this.backDropPath,
      required this.orginalTitle,
      required this.posterPath,
      required this.overView,
      required this.releaseDate});

  factory MovieDetails.fromJson(Map<String, dynamic> json) {
    return MovieDetails(
        title: json["title"],
        backDropPath: json["backdrop_path"],
        posterPath: json["poster_path"],
        orginalTitle: json["original_title"],
        overView: json["overview"],
        releaseDate: json["release_date"]);
  }
}
