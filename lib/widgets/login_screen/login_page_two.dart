import 'package:flutter/material.dart';
import 'package:flutter_learning/main.dart';
import 'package:flutter_learning/widgets/login_screen/login_page_one.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageTwo extends StatelessWidget {
  const LoginPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: SafeArea(child: Center(child: Text("Home"))),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx1) => LoginPageOne()),
      (route) => false,
    );
  }
}
