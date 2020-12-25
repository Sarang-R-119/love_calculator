import 'package:flutter/material.dart';
import 'package:love_calculator/widgets/custom_button.dart';

class NameContainer extends StatelessWidget {

  final TextEditingController name1;
  final TextEditingController name2;
  final Function onTap;

  const NameContainer({ this.onTap, this.name1, this.name2});

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
              controller: name1,
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
              controller: name2,
              decoration: InputDecoration(
                hintText: 'Enter the second name',
                hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(onTap: onTap)
          ],
        ),
      ),
    );
  }
}
