import 'package:coffee_app/utilities/constants.dart';
import 'package:flutter/material.dart';

showSnackBar({required String text, required BuildContext context}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kPrimary,
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: kCardColor),
      ),
    ),
  );
}
