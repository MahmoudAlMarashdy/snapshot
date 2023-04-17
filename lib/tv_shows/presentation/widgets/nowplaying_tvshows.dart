import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NowPlayingTvShowsSlider extends StatelessWidget {
  const NowPlayingTvShowsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Placeholder(
            child: Center(child: Text('1'),),
          ),
          Placeholder(
            child: Center(child: Text('2'),),
          ),
          Placeholder(
            child: Center(child: Text('3'),),
          ),
          Placeholder(
            child: Center(child: Text('4'),),
          ),
          Placeholder(
            child: Center(child: Text('5'),),
          ),
        ],
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 8),
          viewportFraction: 1,
        )
    );
  }
}
