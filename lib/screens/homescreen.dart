import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/utils/widgets.dart';
import 'package:bmi_calculator/utils/constants.dart';

//
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // instantiate gender
  Gender selectedGender;

  // gender card colors
  Color activeColor = Color(0xFF111328);
  Color inactiveColor = Color(0xFF1D1E33);

  // slider height value
  int sliderHeight = 150;

  // age and weight
  int age = 22;
  int weight = 56;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
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
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: MyContainer(
                        bgColor: selectedGender == Gender.male
                            ? activeColor
                            : inactiveColor,
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
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: MyContainer(
                        bgColor: selectedGender == Gender.female
                            ? activeColor
                            : inactiveColor,
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
              child: MyContainer(
                bgColor: Color(0xFF1D1E33),
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT', style: kTextStyle),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          sliderHeight.toString(),
                          style: kNumberStyle,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('cm', style: kTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayColor: Color(0x29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15.0),
                        inactiveTrackColor: Color(0xFF8D8E98),
                      ),
                      child: Slider(
                        value: sliderHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            sliderHeight = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      bgColor: Color(0xFF1D1E33),
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kTextStyle,
                          ),
                          Row(
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kNumberStyle,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('kg', style: kTextStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CustomRoundIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressedAction: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CustomRoundIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressedAction: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      bgColor: Color(0xFF1D1E33),
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Row(
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: kNumberStyle,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('y', style: kTextStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CustomRoundIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressedAction: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CustomRoundIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressedAction: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.circular(10.0)),
              height: 40.0,
              //padding: EdgeInsets.all(10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    print('Calc BMI');
                  },
                  child: Text('CALCULATE BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// enum class to hold gender types
enum Gender { male, female }
