import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class TopRatedTvShowsView extends StatelessWidget {
  const TopRatedTvShowsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Top Rated Tv Shows");
  }
}
