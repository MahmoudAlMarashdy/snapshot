import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Popular Movies");
  }
}
