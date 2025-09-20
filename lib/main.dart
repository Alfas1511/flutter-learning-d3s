import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/login_screen/login_page_splash_screen.dart';
import 'package:flutter_learning/widgets/shared_preferences/sp_screen_one.dart';
import 'package:flutter_learning/widgets/shared_preferences/sp_screen_two.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_learning/widgets/home_page.dart';
import 'package:flutter_learning/widgets/Navigation_learning_two/chat_screen_one.dart';
import 'package:flutter_learning/widgets/button_widgets.dart';
import 'package:flutter_learning/widgets/container.dart';
import 'package:flutter_learning/widgets/row_column_widget.dart';
import 'package:flutter_learning/widgets/Navigation_learning_one/screen_one.dart';
import 'package:flutter_learning/widgets/Navigation_learning_one/screen_two.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',

      // home: ButtonWidgets(),

      // home: ScreenOne(),
      // routes: {
      //   'Screen One' : (context){
      //     return ScreenOne();
      //   },
      //   'Screen Two' : (context){
      //     return ScreenTwo();
      //   }
      // }

      // home: ChatScreenOne(),


      // home: SharedPreferenceScreenOne(),

      home: LoginPageSplashScreen(),

    );
  }
}