import 'package:flutter/material.dart';
import 'package:spike/user/controller/user.dart';
//import 'InputValidator.dart';

void main() => runApp(new Spike());

class Spike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spike App',
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: Text('Spike'),
//          textTheme: ba,
            ),
            body: LoginForm()));
  }
}
