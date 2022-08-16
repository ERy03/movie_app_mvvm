import 'dart:convert';

import 'package:movie_app_mvvm/movie_apikey.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = 'http://www.omdbapi.com/?s=$keyword&apikey=$apikey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perfomr request!");
    }
  }
}
