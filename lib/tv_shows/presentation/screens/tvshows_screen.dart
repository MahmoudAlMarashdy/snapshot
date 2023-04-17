import 'package:flutter/material.dart';
import 'package:snapshot/tv_shows/presentation/widgets/nowplaying_tvshows.dart';

class TvShowsScreen extends StatelessWidget {
  const TvShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NowPlayingTvShowsSlider(),
        ],
      ),
    );
  }
}
