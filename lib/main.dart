import 'package:flutter/material.dart';

void main() => runApp(new Spike());



class Spike extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Spike App',
        home: Scaffold(
        appBar: AppBar(
        title: Text('Spike App'),
    ),
    body: LoginForm()
    )
    );
  }
}

class LoginForm extends StatefulWidget{
  @override
  LoginFormState createState() {
    return LoginFormState();
  }

}


class LoginFormState extends State<LoginForm>{
  final _formLoginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formLoginKey,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
        },
      ),
    );
  }

}