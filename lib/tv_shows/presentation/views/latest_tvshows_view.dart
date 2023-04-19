import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class LatestTvShowsView extends StatelessWidget {
  const LatestTvShowsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Latest Tv Shows");
  }
}
