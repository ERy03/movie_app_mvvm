import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model/movie_list_view_model.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        ));
  }
}
