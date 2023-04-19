import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class TopRatedMoviesView extends StatelessWidget {
  const TopRatedMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Top Rated Movies");
  }
}
