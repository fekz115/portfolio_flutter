import 'package:flutter/material.dart';
import 'package:portfolio_flutter/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color(0xFFbdbdbd),
          primary: Color(0xFF607d8b),
          primaryVariant: Color(0xff2f596e),
          secondary: Color(0xFF616161),
          secondaryVariant: Color(0xff424242),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
