import 'package:flutter/material.dart';

class LoginPageSplashScreen extends StatefulWidget {
  const LoginPageSplashScreen({super.key});

  @override
  State<LoginPageSplashScreen> createState() => _LoginPageSplashScreenState();
}

class _LoginPageSplashScreenState extends State<LoginPageSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
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
      body: Center(
        child: Image.asset('assets/images/logo_1.jpg', height: 120),
      ),
    );
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
