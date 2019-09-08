
import 'package:flutter/material.dart';
import 'package:custom_widget_startup/service/local_storage_service.dart';
import 'package:custom_widget_startup/service/service_locator.dart';
import 'package:custom_widget_startup/screen/home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      floatingActionButton: FloatingActionButton(onPressed: () {
        var localStorageService = locator<LocalStorageService>();
        localStorageService.isLoggedIn = true;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }),
      body: Center(
          child: Text(
            this.runtimeType.toString(),
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
          )),
    );
  }
}