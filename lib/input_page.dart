import 'package:flutter/material.dart';

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
                  child: ReusableCard(color: const Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(color: const Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: const Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(color: const Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
// ignore: use_key_in_widget_constructors
  ReusableCard({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
