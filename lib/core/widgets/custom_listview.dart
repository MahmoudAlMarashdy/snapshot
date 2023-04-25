import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category,style: TextStyle(fontSize: 18)),
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
          height: 150,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context,index){
                return SizedBox(
                  width: 120,
                  child: InkWell(
                    onTap: (){},
                    child: Card(
                      color: Colors.cyan,
                      child: Center(child: Text('$index',style: TextStyle(fontSize: 20),)),
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }
}
