import 'package:flutter/material.dart';
import 'InputValidator.dart';

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
  LoginFormUI createState() {
    return LoginFormUI();
  }

}


class LoginFormUI extends State<LoginForm>{
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
                labelText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password',
            ),
            keyboardType: TextInputType.text,
//            validator: InputValidator.ValidateEmail
//            },
          ),
          RaisedButton(
//            onPressed:,
            child: new Text('LOGIN'),
          )
        ],
      )
    );
  }

}

String validateName(String value) {
  if (value.length < 3)
    return 'Name must be more than 2 charater';
  else
    return null;
}