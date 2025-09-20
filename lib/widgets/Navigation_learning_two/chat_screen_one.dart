import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/Navigation_learning_two/chat_screen_two.dart';

class ChatScreenOne extends StatelessWidget {
  const ChatScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen One: HOME PAGE'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('Person ${index + 1}'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return ChatScreenTwo(name: "Person ${index + 1}");
                    },
                  ),
                );
              },
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
