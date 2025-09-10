import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child:
        Scaffold(
          // AppBar
          appBar: AppBar(
            title: Text("Demo App",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[900],

            // Appbar Left-Side Buttons
            leading: Icon(Icons.arrow_left),

            // AppBar Right-Side Buttons
            actions: [
              // Icon(Icons.search),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
            ],
            // Shapes
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15)
              )
            ),

            // Elevation
            elevation: 20,

          ),
            body: Center(
              child: Text("Home Page",
                style: TextStyle(
                fontSize: 25,
                  backgroundColor: Colors.red,
                  letterSpacing: 12,
                   fontWeight: FontWeight.w800,
              ),
              ),
            )
        )
    );
  }
}
