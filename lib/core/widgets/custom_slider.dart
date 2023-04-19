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
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context,itemIndex,pageViewindex) {
            return InkWell(
              onTap: (){},
              child: Placeholder(
                child: Center(child: Text("${itemIndex + 1}"),),
              ),
            );
          },
          carouselController: carouselController,
          options: CarouselOptions(
            height: 300,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(currentCarouselIndex == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
