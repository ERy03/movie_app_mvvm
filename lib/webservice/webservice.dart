import 'package:movie_app_mvvm/movie_apikey.dart';

class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = 'http://www.omdbapi.com/?s=$keyword&apikey=$apikey';
  }
}
