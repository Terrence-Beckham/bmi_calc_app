import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          colorScheme: const ColorScheme.dark(
            primary: Color(0xFF0A0E21),
          ),
          appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21),
          ),
          textTheme:
              const TextTheme(headline1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
