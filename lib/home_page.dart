import 'package:flutter/material.dart';
import 'package:flutter_app_page_view/components/arrow_card.dart';
import 'package:flutter_app_page_view/model/arrow.dart';

import 'dart:math' as math;
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  int initialPage = 1;


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: initialPage,
    );
  }


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 0.1,
        child: PageView.builder(
            onPageChanged: (value){
              initialPage = value;
            },
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            physics: ClampingScrollPhysics(),
            itemCount: arrows.length,
            itemBuilder: (context, index) => buildArrowSlider(index)));
  }

  Widget buildArrowSlider(int index) =>
      AnimatedBuilder(
        animation: _pageController,
        builder: (context,child){
          double value = 0;
          if(_pageController.position.haveDimensions){
            value = index - _pageController.page;
            value = (value*0.01).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.3,
            child: Transform.rotate(
                angle: math.pi*value,
                child: ArrowCard(arrow: arrows[index])),
          );
        },
      );
}
