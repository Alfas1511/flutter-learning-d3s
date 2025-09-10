import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App",
        style: TextStyle(
        color: Colors.white,
          fontWeight: FontWeight.w500,

        ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          // color: Colors.yellow,
          // height: double.infinity,
          height: 300,
          // width: 200,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(
                color: Colors.yellow,
                width: 12,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color:Colors.red, offset: Offset(5,5), blurRadius: 10)
            ]
          ),
          child: Text("Hello World",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
      ),
    );
  }
}
