import 'package:flutter/material.dart';
import 'package:snapshot/core/widgets/custom_listview.dart';

class LatestMoviesView extends StatelessWidget {
  const LatestMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListView(category: "Latest Movies");
  }
}
