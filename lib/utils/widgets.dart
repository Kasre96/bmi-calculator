import 'package:flutter/material.dart';

// Reusable container content widgets
class ContainerContent extends StatelessWidget {
  final Widget icon;
  final String label;

  ContainerContent({this.icon, this.label});

  // constants
  final iconSize = 60.0;
  final textStyle = TextStyle(color: Colors.white70);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 20,
        ),
        Text(label, style: textStyle)
      ],
    );
  }
}

// Reusable container widget
class MyContainer extends StatelessWidget {
  // container background color
  final Color bgColor;
  final Widget childWidget;

  MyContainer({@required this.bgColor, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: childWidget,
    );
  }
}
