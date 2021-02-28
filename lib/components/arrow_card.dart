import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_page_view/model/arrow.dart';
import 'package:widget_arrows/widget_arrows.dart';

class ArrowCard extends StatelessWidget {
  final Arrow arrow;

  const ArrowCard({Key key, @required this.arrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ArrowContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: OpenContainer(
            closedElevation: 0,
            openElevation: 0,
            closedBuilder: (context, action) => buildArrowCard(context),
            openBuilder: (context, action) => Container(),
          ),
        ),
    );
  }

  Stack buildArrowCard(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(color: Colors.black54)]),
            child: Column(
              children: [
                ArrowElement(
                  id: arrow.id,
                  child: Text(arrow.targetId),

                ),

              ],
            ),
          ),
        ),
        Positioned(
          top: 80,
            right: 20,
            child: Column(
              children: [
                ArrowElement(
                    show: true,
                    color: Colors.red,
                    id: arrow.ids[0],
                    targetId: arrow.id,
                    targetAnchor: Alignment.centerRight,
                    sourceAnchor: Alignment.centerLeft,
                    child: Text(arrow.ids[0])),
                SizedBox(height: 30,),
                ArrowElement(
                    show: true,
                    color: Colors.blue,
                    id: arrow.ids[1],
                    targetId: arrow.id,
                    targetAnchor: Alignment.centerRight,
                    sourceAnchor: Alignment.centerLeft,
                    child: Text(arrow.ids[1])),
                SizedBox(height: 30,),
                ArrowElement(
                    show: true,
                    color: Colors.blue,
                    id: arrow.ids[2],
                    targetId: arrow.id,
                    targetAnchor: Alignment.centerRight,
                    sourceAnchor: Alignment.centerLeft,
                    child: Text(arrow.ids[2])),

              ],
            )),
      ],
    );
  }

 Text roopText() {
    for(var id in arrow.ids){
    return  Text(id);
    }
  }
}
