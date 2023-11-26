import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromRGBO(237, 229, 218, 1),
        ),
        ListView(
          padding: EdgeInsets.only(left: 20, bottom: 460),
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Coffee',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      decorationThickness: 2.85,
                      color: Color.fromRGBO(54, 59, 75, 1)),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Cup-Cake',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(54, 59, 75, 1)),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Cookies',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(54, 59, 75, 1)),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Croissant',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(54, 59, 75, 1)),
                ),
              ),
            ),
            Wrap(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Image.asset('assets/images/search.png'),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Image.asset('assets/images/shopping-bag.png'),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
