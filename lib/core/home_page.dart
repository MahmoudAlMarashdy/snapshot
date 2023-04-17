import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:snapshot/movies/presentation/screens/movies_screen.dart';
import 'package:snapshot/tv_shows/presentation/screens/tvshows_screen.dart';

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
          body: PersistentTabView(
            context,
            navBarStyle: NavBarStyle.style6,
            screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 400),
            ),
            screens: [
              MoviesScreen(),
              TvShowsScreen(),
              Center(child: Text("Watchlist",style: TextStyle(fontSize: 30),),),
            ],
            items: [
              PersistentBottomNavBarItem(
                icon: Icon(Icons.movie),
                title: "Movies",
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.tv),
                title: "TV Shows",
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.bookmarks_rounded),
                title: "Watch List",
              ),
            ],
          ),
        ),
    );
  }
}