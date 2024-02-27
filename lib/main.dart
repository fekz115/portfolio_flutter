import 'package:flutter/material.dart';
import 'package:portfolio_flutter/data.dart';
import 'package:portfolio_flutter/screens/main_screen.dart';
import 'package:portfolio_flutter/theme_manager.dart';

void main() => runApp(MyApp());

final themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  void themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: '${personInfo.firstName} ${personInfo.lastName}',
        home: const MainScreen(),
        themeMode: themeManager.themeMode,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
      );
}
