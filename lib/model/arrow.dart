import 'package:flutter/material.dart';

class Arrow {
  final String id;
  final List<String> ids;
  final String targetId;
  final String icon;
  final String targetIcon;

  Arrow({@required this.id,
    @required this.ids,
    @required this.targetId,
    @required this.icon,
    @required this.targetIcon});
}

List<Arrow> arrows = [
  Arrow(id: "1",ids: ["oha","kon","heloo"], targetId: "10", icon: "maru", targetIcon: "sikaku"),

  Arrow(id: "2",ids: ["oha","kon","heloo"], targetId: "20", icon: "maru", targetIcon: "sikaku"),

  Arrow(id: "3",ids: ["oha","kon","heloo"], targetId: "30", icon: "maru", targetIcon: "sikaku"),
];
