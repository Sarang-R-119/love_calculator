import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[100],
        ),
        child: Column(
          children: [
            Text(
              'Enter the Names',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: 'Enter the first name',
                hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: 'Enter the second name',
                hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
