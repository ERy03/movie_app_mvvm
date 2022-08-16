import 'package:flutter/material.dart';
import 'package:movie_app_mvvm/view_model/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {}
}
