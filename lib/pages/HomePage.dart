import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> loadJsonData() async {
    String jsonData = await rootBundle.loadString('assets/coffee.json');
    Map<String, dynamic> data = json.decode(jsonData);
    // You can now use the 'data' variable to access the JSON content.
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color.fromRGBO(255, 210, 166, 1),
        ),
        Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 110)),
              Container(
                  child: Image.asset('assets/images/navbar.png'),
                  padding: EdgeInsets.only(left: 110)),
              Container(
                child: Text('Home'),
              ),
              Container(
                child: Image.asset('assets/images/like.png'),
              ),
              Container(
                child: Image.asset('assets/images/shopping-bag.png'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
