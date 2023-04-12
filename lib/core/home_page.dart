import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("SnapShot"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
        ],
      ),
      body: Column(

      ),
    );
  }
}