import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
// ignore: use_key_in_widget_constructors
  const ReusableCard(
      {required this.color, required this.cardChild, required this.onPress});

  final Color color;
  final Widget cardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
