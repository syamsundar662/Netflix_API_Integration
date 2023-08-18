class TopRated {
  String? title;
  String? backDropPath;
  String? orginalTitle;
  String? posterPath;
  String? overView;
  String? releaseDate;

  TopRated(
      {required this.title,
      required this.backDropPath,
      required this.orginalTitle,
      required this.posterPath,
      required this.overView,
      required this.releaseDate});

      TopRated.fromJson(Map<String, dynamic> json) {
       
        title= json["title"];
        backDropPath= json["backdrop_path"];
        posterPath= json["poster_path"];
        orginalTitle= json["original_title"];
        overView= json["overview"];
        releaseDate= json["release_date"];
  }
  static List<TopRated> toListTopRatingModel(List<dynamic> jsonList){
    return jsonList.map((e) => TopRated.fromJson(e)).toList();
  }
}