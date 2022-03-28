import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
// ignore: use_key_in_widget_constructors
  const ReusableCard(
      {required this.color, required this.child, required this.onPress});

  final Color color;
  final Widget child;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
