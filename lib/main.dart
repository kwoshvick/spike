import 'package:flutter/material.dart';

void main() => runApp(new Spike());



class Spike extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Spike App',
        home: Scaffold(
        appBar: AppBar(
        title: Text('Spike'),
//          textTheme: ba,
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
      child: Column(
        children: <Widget>[
          //email
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
          ),
        ],
      )
    );
  }

}