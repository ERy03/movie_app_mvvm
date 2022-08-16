import 'package:flutter/material.dart';
import 'package:movie_app_mvvm/view_model/movie_view_model.dart';
import 'package:movie_app_mvvm/webservice/webservice.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    final results = await Webservice().fetchMovies(keyword);
    movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(movies);
    notifyListeners();
  }
}
