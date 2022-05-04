import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:using_riverpod/providers/ui_provider.dart';
import 'pages/home_page.dart';

final uiProvider = Provider((_) => UiProvider());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (_) => HomePage()},
    );
  }
}
