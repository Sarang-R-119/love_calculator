import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:love_calculator/screens/secondaryPage.dart';
import 'package:love_calculator/widgets/name_container.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatelessWidget {

  final TextEditingController name1 = TextEditingController();
  final TextEditingController name2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Calculator'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),

      backgroundColor: Colors.red,
      body: Center(
        child: NameContainer(name1: name1, name2: name2,
          onTap: () async{

          // Getting the url of the API call
            var url =
                'https://rapidapi.p.rapidapi.com/getPercentage?fname=${name1.text.trim()}&sname=${name2.text.trim()}';

          // Getting the host and key headers
            Map<String, String> headers = {
              'x-rapidapi-host': 'love-calculator.p.rapidapi.com',
              'x-rapidapi-key': '40cd906284mshf322f285a1e564dp1aebfdjsn013d55972b98',
            };

          // await -> Guides the flutter to take time to collect the response
          var response = await http.get(url, headers: headers);
            print(response.body);
            print('Response is collected.');

          // To parse the response
            var jsonResponse = jsonDecode(response.body);
          // Navigators and routes -> Intents in Android Studio. Also uses a anonymous function.
            // The builder is going to convert the context into a widget.
            Navigator.push(context, MaterialPageRoute(builder: (context) => resultsPage(
              message: jsonResponse['result'],
              percent: int.parse(jsonResponse['percentage']),
            )));
          },
        ),
      )
    );
  }
}
