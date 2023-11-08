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
          Container(
            child: Text('Home page'),
          ),
        ],
      ),
    );
  }
}
