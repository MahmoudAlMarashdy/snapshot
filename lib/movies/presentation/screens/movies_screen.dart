import 'package:flutter/material.dart';
import 'package:snapshot/movies/presentation/widgets/nowplaying_movies_slider.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NowPlayingMoviesSlider(),
        ],
      ),
    );
  }
}
