import 'package:flutter/material.dart';
import 'package:love_calculator/widgets/name_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Calculator'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: NameContainer(),
      )
    );
  }
}
