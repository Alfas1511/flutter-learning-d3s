import 'package:flutter/material.dart';
import 'package:flutter_learning/main.dart';
import 'package:flutter_learning/widgets/login_screen/login_page_two.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageOne extends StatefulWidget {
  LoginPageOne({super.key});

  @override
  State<LoginPageOne> createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username..',
                  ),
                  validator: (value) {
                    // if (_isDataMatched) {
                    //   return null;
                    // } else {
                    //   return "Error";
                    // }
                    if (value == null || value.isEmpty) {
                      return "Username is Empty";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password..',
                  ),
                  validator: (value) {
                    // if (_isDataMatched) {
                    //   return null;
                    // } else {
                    //   return "Error";
                    // }

                    if (value == null || value.isEmpty) {
                      return "Password is Empty";
                    } else {
                      return null;
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: !_isDataMatched,
                      child: Text(
                        "Username and password does not match!!",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // _formKey.currentState!.validate();
                        // checkLogin(context);

                        if (_formKey.currentState!.validate()) {
                          checkLogin(context);
                        } else {
                          print("Data Empty");
                        }
                      },
                      icon: Icon(Icons.check),
                      label: Text('login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void checkLogin(BuildContext ctx) {
  //   final _username = _usernameController.text;
  //   final _password = _passwordController.text;

  //   if (_username == _password) {
  //     //
  //   } else {
  //     final _errorMessage = "Username and password does not match";

  //     //Snackbar
  //     ScaffoldMessenger.of(ctx).showSnackBar(
  //       SnackBar(
  //         behavior: SnackBarBehavior.floating,
  //         margin: EdgeInsets.all(10),
  //         backgroundColor: Colors.red,
  //         duration: Duration(seconds: 3),
  //         content: Text(_errorMessage),
  //       ),
  //     );

  //     //Alert dialog

  //     showDialog(
  //       context: ctx,
  //       builder: (ctx1) {
  //         return AlertDialog(
  //           title: Text("Error"),
  //           content: Text(_errorMessage),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(ctx1).pop();
  //               },
  //               child: Text('Close'),
  //             ),
  //           ],
  //         );
  //       },
  //     );

  //     // Show Text
  //     setState(() {
  //       _isDataMatched = false;
  //     });
  //   }
  // }

  void checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;

    if (_username == _password) {
      print("Username and password matched");
      // Home Screen Page Two

      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);

      Navigator.of(
        ctx,
      ).pushReplacement(MaterialPageRoute(builder: (ctx1) => LoginPageTwo()));
    } else {
      print("Username and password does not match");
    }
  }
}
