import 'package:flutter/material.dart';

import 'package:custom_widget_startup/service/local_storage_service.dart';
import 'package:custom_widget_startup/screen/home/home_screen.dart';
import 'package:custom_widget_startup/screen/login/login_screen.dart';
import 'package:custom_widget_startup/screen/signup/signup_screen.dart';
import 'package:custom_widget_startup/service/service_locator.dart';

Future<void> main() async {
  try {
    await setupLocator();
    runApp(MyApp());
  } catch (error) {
    print('Locator setup has failed');
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: _getStartupScreen()
    );
  }
  Widget _getStartupScreen() {
    var localStorageService = locator<LocalStorageService>();
//    localStorageService.isLoggedIn = false;
    if(!localStorageService.isLoggedIn) {
      return SignUpScreen();
    }
    return HomeScreen();
  }
}

