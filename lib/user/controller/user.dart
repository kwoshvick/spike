import 'package:flutter/material.dart';
import 'package:spike/user/view/user_view.dart';
import 'package:spike/customLibs/AppRest.dart';

class LoginForm extends StatefulWidget{
  @override
  LoginFormUI createState() {
    return LoginFormUI();
  }
}

class SignUpForm extends StatefulWidget{
  @override
  SignUpFormUI createState() {
    return SignUpFormUI();
  }
}

//

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: SignUpForm(),
    );
  }
}
//
//class UserLogin{
//  AppRest AR,
//  void AuthenticateUser(String email, String password){
//    bool _login = AR.LoginUser();
//    if(_login){
//
//    }else{
//
//    }
//
//  }
//
//}

