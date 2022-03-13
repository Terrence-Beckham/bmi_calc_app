import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80,
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        label,
        style: const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
      ),
    ]);
  }
}
