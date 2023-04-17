import 'package:flutter/material.dart';
import 'package:snapshot/movies/presentation/views/popular_movies_view.dart';
import 'package:snapshot/movies/presentation/widgets/nowplaying_movies_slider.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NowPlayingMoviesSlider(),
        PopularMoviesView(),
      ],
    );
  }
}
