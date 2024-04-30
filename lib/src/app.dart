import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/flavors/flavors.dart';
import 'package:formus_digital_challenge/src/views/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorsSettings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
