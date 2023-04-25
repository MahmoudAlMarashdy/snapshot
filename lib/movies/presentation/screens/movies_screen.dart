import 'package:flutter/material.dart';
import 'package:snapshot/movies/presentation/views/latest_movies_view.dart';
import 'package:snapshot/movies/presentation/views/popular_movies_view.dart';
import 'package:snapshot/movies/presentation/views/nowplaying_movies_view.dart';
import 'package:snapshot/movies/presentation/views/top_rated_movies_view.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NowPlayingMoviesView(),
          PopularMoviesView(),
          LatestMoviesView(),
        ],
      ),
    );
  }
}
