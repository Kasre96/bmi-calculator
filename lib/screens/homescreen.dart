import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/utils/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFF0E1020),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('Pressed');
                      },
                      child: MyContainer(
                        bgColor: Color(0xFF1D1E33),
                        childWidget: ContainerContent(
                          icon: Icon(
                            FontAwesomeIcons.mars,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        //
                      },
                      child: MyContainer(
                        bgColor: Color(0xFF1D1E33),
                        childWidget: ContainerContent(
                          icon: Icon(
                            FontAwesomeIcons.venus,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      bgColor: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      bgColor: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      bgColor: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
