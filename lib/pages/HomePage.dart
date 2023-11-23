import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 229, 218, 1),
      body: Wrap(
        children: [
          Scaffold(
            backgroundColor: Color.fromRGBO(160, 41, 240, 1),
            appBar: AppBar(
              title: Text('home Page'),
            ),
            body: Container(child: Text('home page')),
          ),
        ],
      ),
    );
  }
}
