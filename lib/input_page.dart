import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const reuseableCardColor = Color(0xFF1D1E33);

const bottomContainerColor = Colors.purple;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reuseableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reuseableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: reuseableCardColor,
              child: IconContent(
                icon: FontAwesomeIcons.addressBook,
                label: 'Empty',
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reuseableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.cheese,
                      label: 'EMPTY',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reuseableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.pizzaSlice,
                      label: 'EMPTY',
                    ),
                  ),
                ),
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
