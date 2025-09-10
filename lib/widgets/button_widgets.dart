import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          "App Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.red),
                textStyle: WidgetStateProperty.all((TextStyle(fontSize: 40))),
              ),
              onPressed: () {
                log("Text Button Clicked");
              },
              child: Text("Text Button"),
            ),
          ],
        ),
      ),
    );
  }
}
