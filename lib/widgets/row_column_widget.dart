import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is AppBar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w600
        ),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: Text("RED",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 30
                    ),
                  ),
                )
            ),
            Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
                child: Center(
                  child:Text("Green",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 30
                    ),
                  ),
                )
            ),
            Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
                child: Center(
                  child: Text("Yellow",
                    style: TextStyle(
                        color:Colors.black,
                        fontSize: 30
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
