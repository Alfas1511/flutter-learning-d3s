import 'package:flutter/material.dart';

class SharedPreferenceScreenTwo extends StatelessWidget {
  const SharedPreferenceScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(child: Column(children: [Text("Value found")])),
    );
  }
}
