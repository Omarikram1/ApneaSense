import 'package:flutter/material.dart';

void displayMessageToUser(String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor:
            Colors.grey, // Change the background color of the AlertDialog
        title: Text(
          message,
          style: const TextStyle(
            color: Colors.white, // Change the text color inside the AlertDialog
            fontSize: 16, // Change the font size of the text
          ),
        ),
      );
    },
  );
}
