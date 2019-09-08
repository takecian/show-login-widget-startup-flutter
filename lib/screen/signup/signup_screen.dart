import 'package:custom_widget_startup/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }),
      body: Center(
          child: Text(
            this.runtimeType.toString(),
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
          )),
    );
  }
}
