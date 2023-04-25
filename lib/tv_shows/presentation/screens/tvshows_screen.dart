import 'package:flutter/material.dart';
import 'package:snapshot/tv_shows/presentation/views/latest_tvshows_view.dart';
import 'package:snapshot/tv_shows/presentation/views/popular_tvshows_view.dart';
import 'package:snapshot/tv_shows/presentation/views/nowplaying_tvshows_view.dart';
import 'package:snapshot/tv_shows/presentation/views/top_rated_tvshows_view.dart';

class TvShowsScreen extends StatelessWidget {
  const TvShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NowPlayingTvShowsView(),
          PopularTvShowsView(),
          LatestTvShowsView(),
        ],
      ),
    );
  }
}
