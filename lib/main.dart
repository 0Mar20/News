import 'package:flutter/material.dart';
import 'Introduce.dart';
import 'HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AppTheme.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool seen = preferences.getBool("seen");
  Widget screen;
  if(seen == null || seen == false){
    screen = Introduce();
  }else{
    screen = HomeScreen();
  }

  runApp(MyApp(screen));
}

class MyApp extends StatelessWidget {
  final Widget screen;
  MyApp(this.screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: screen,
    );
  }
}

