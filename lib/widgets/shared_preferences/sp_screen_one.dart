import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_learning/widgets/shared_preferences/sp_screen_two.dart';

class SharedPreferenceScreenOne extends StatelessWidget {
  SharedPreferenceScreenOne({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextFormField(controller: _textController),
              ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text('Save value'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Normal function to get value from text field on button click
  Future<void> saveDataToStorage() async {
    print("This is text: ${_textController.text}");

    // Shared Preferences
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final savedValue = sharedPrefs.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => SharedPreferenceScreenTwo()));
    }
  }
}
