import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/now_playing_slider.dart';

class NowPlayingMoviesSlider extends StatelessWidget {
  const NowPlayingMoviesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NowPlayingSlider();
  }
}
