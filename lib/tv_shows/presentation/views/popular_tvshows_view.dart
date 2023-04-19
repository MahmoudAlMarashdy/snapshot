import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class PopularTvShowsView extends StatelessWidget {
  const PopularTvShowsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Popular Tv Shows");
  }
}
