import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/Navigation_learning_one/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Screen One'),
          backgroundColor: Colors.blue
      ),
      body: Column(
        children: [
          Text('Screen 1'),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) {
              //       return ScreenTwo();
              //     },
              //   ),
              // );

              Navigator.of(context).pushNamed("Screen Two");
            },
            child: Text("Goto Screen Two"),
          ),
        ],
      ),
    );
  }
}
