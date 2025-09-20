import 'package:flutter/material.dart';

class ChatScreenTwo extends StatelessWidget {
  final String name;
  const ChatScreenTwo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen Two: ${name}'),
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("go back"),
          ),
        ),
      ),
    );
  }
}
