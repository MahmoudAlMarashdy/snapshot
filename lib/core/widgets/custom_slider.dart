import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  int currentCarouselIndex = 0;
  final CarouselController carouselController = CarouselController();

  List imgList = [
    Placeholder(
      child: Center(child: Text("1"),),
    ),
    Placeholder(
      child: Center(child: Text("2"),),
    ),
    Placeholder(
      child: Center(child: Text("3"),),
    ),
    Placeholder(
      child: Center(child: Text("4"),),
    ),
    Placeholder(
      child: Center(child: Text("5"),),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0),
                    ],
                  )
              ),
              height: 120,
              width: double.maxFinite,
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context,itemIndex,pageViewindex) {
                return InkWell(
                  onTap: (){},
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Center(child: Text("${itemIndex + 1}"),),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Movie Name",style: TextStyle(fontSize: 24,color: Colors.cyan),),
                            SizedBox(height: 5,),
                            Text("13/2/2022",style: TextStyle(color: Colors.cyan))
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              carouselController: carouselController,
              options: CarouselOptions(
                  height: 480,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 8),
                  viewportFraction: 1,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentCarouselIndex = index;
                    });
                  }
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.blue)
                        .withOpacity(currentCarouselIndex == entry.key ? 1 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
