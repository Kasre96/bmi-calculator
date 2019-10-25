import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/constants.dart';

// Reusable container content widgets
class ContainerContent extends StatelessWidget {
  final Widget icon;
  final String label;

  ContainerContent({this.icon, this.label});

  // constants
  final iconSize = 60.0;

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
        Text(label, style: kTextStyle)
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

// Custom round icon widget
class CustomRoundIcon extends StatelessWidget {
  // takes in a child with icon data and onpressed function
  final IconData icon;
  final Function onPressedAction;

  // constructor
  CustomRoundIcon({@required this.icon, @required this.onPressedAction});


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white, size: 18.0,),
      elevation: 6.0,
      onPressed: onPressedAction,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0
      ),
    );
  }
}
