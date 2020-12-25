import 'package:flutter/material.dart';

class resultsPage extends StatelessWidget {

  final int percent;
  final String message;

  const resultsPage({this.percent, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: FittedBox(
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
                    '$percent%',
                    style: TextStyle(fontSize: 60.0),
                  ),
                  SizedBox(height: 30.0,),
                  Text(
                    message??'Error!',
                    style: TextStyle(fontSize: 20.0 ),
                  )
                ],
              )
            ),
          )
        )
    );
  }
}
