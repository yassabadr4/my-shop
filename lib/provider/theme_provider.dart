import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier{
  static const String Theme_Status = 'Theme_Status';
   bool _darkTheme = false;
  bool get getIsDarkTheme => _darkTheme;

  ThemeProvider(){
    getTheme();
  }

 Future <void> setDarkTheme({required bool themeValue})async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(Theme_Status, themeValue);
  _darkTheme = themeValue;
  notifyListeners();

  }

  Future <bool> getTheme()async{
   SharedPreferences prefs = await SharedPreferences.getInstance();
   _darkTheme = prefs.getBool(Theme_Status)?? false;
   notifyListeners();
   return _darkTheme;
  }
}