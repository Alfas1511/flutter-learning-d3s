import 'package:flutter/material.dart';
import 'package:flutter_learning/main.dart';
import 'package:flutter_learning/widgets/login_screen/login_page_one.dart';
import 'package:flutter_learning/widgets/login_screen/login_page_two.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageSplashScreen extends StatefulWidget {
  const LoginPageSplashScreen({super.key});

  @override
  State<LoginPageSplashScreen> createState() => _LoginPageSplashScreenState();
}

class _LoginPageSplashScreenState extends State<LoginPageSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // gotoLogin();
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/logo_1.jpg', height: 120)),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (ctx) => LoginPageOne()));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    // _sharedPrefs.setBool(SAVE_KEY_NAME, true);
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (ctx1) => LoginPageTwo()));
    }
  }
}
