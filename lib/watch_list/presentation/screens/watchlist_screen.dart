import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../movies/presentation/screens/movies_screen.dart';
import '../../../tv_shows/presentation/screens/tvshows_screen.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("watchlist",style: TextStyle(fontSize: 40),),
      )
    );
  }
}