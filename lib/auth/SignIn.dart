import 'package:coffee_app/auth/SignUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 174, 169, 1),
      body: Wrap(
        children: [
          Container(
            child: Image.asset('assets/images/coffee_beans.png'),
            padding: EdgeInsets.only(left: 100, top: 80),
          ),
          Container(
            child: Text(
              'Sign-In',
              style: TextStyle(
                  color: Color.fromRGBO(
                    112,
                    112,
                    112,
                    1,
                  ),
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(left: 40, top: 40),
          ),
          Container(
            child: TextField(
                decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
              filled: true,
              fillColor: Color.fromRGBO(255, 210, 166, 1),
              border: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
              ),
            )),
            padding: EdgeInsets.only(right: 40, top: 60, left: 40),
          ),
          Container(
            child: TextField(
                decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              prefixIcon: Icon(Icons.visibility_off_outlined),
              hintText: 'Password',
              filled: true,
              fillColor: Color.fromRGBO(255, 210, 166, 1),
              border: OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
              ),
            )),
            padding: EdgeInsets.only(right: 40, top: 18, left: 40),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign-In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(147, 122, 113, 1),
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(300, 50),
              ),
            ),
            padding: EdgeInsets.only(left: 50, top: 30),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 60, top: 40),
                child: Text(
                  'Do not have an account?  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Text(
                    'Sign-Up',
                    style: TextStyle(
                      color: Color.fromRGBO(147, 122, 113, 1),
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
