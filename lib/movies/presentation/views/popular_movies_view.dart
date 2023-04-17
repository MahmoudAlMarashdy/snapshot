import 'package:flutter/material.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Movies",style: TextStyle(fontSize: 18)),
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Text("more",style: TextStyle(fontSize: 15)),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward_ios_sharp,size: 12,),
                    ],
                  )
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context,index){
                  return SizedBox(
                    width: 150,
                    child: Card(
                      color: Colors.cyan,
                      child: Center(child: Text('$index',style: TextStyle(fontSize: 20),)),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}