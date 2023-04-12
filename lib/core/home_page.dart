import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:snapshot/movies/presentation/screens/nowplaying_movies_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) => [
            SliverAppBar(
              centerTitle: false,
              title: Text("SnapShot"),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
              ],
            )
          ],
          body: Column(
            children: [
              NowPlayingMoviesSlider(),
            ],
          ),
        ),
    );
  }
}