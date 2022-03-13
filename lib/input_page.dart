import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const reuseableCardColor = Color(0xFF1D1E33);

const bottomContainerColor = Colors.red;

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reuseableCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: IconContent()),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: IconContent()),
                Expanded(child: IconContent()),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
