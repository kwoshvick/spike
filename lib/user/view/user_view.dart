import 'package:flutter/material.dart';
import 'package:spike/user/controller/user.dart';
import 'package:spike/customLibs/InputFieldValidator.dart';
import 'package:spike/customLibs/AppStrings.dart';
import 'package:spike/customLibs/AppRest.dart';
//import 'package:flutter/Va';



class LoginFormUI extends State<LoginForm> {
  final _formLoginKey = GlobalKey<FormState>();
  String _email, _password;
  InputFieldValidator ifv;

  ValidatePassword(String password){
//    print(password);
    if(password.length < 5){
      return 'Password must be more than 5 charater';
    }else{
      return null;
    }}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
//        resizeToAvoidBottomPadding: true,
        key: _formLoginKey,
        child: Column(
          children: <Widget>[
            //email
            TextFormField(
              decoration: InputDecoration(
                hintText: AppStrings.emailHint,
                labelText: AppStrings.email,
              ),
              keyboardType: TextInputType.emailAddress,
              validator:(value)=>InputFieldValidator.ValidateEmail(value),
            onSaved: (String value){
                _email = value;
            },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: AppStrings.password,
              ),
              keyboardType: TextInputType.text,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
              onSaved: (String value){
                _password = value;
              },
            ),
            RaisedButton(
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => SignUpScreen()),
//                );
//              },
              onPressed: this.submit,
              child: new Text('LOGIN'),
            )
          ],
        )
    );
  }


  void submit() {
    AppRest ar = new AppRest();
    ar.test();
    // First validate form.
    if (this._formLoginKey.currentState.validate()) {
      _formLoginKey.currentState.save(); // Save our form now.

    print('Printing the login data.');
    print('Email: ${_email}');
    print('Password: ${_password}');
    }
  }



}



class SignUpFormUI extends State<SignUpForm> {
  final _formSignUpnKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Form(
        child: new Column(
//          verticalDirection: true,
          children: <Widget>[
//            focus
            //--first name
            new TextFormField(
              decoration: new InputDecoration(
                labelText: AppStrings.firstName,
              ),
              keyboardType: TextInputType.text,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
            ),
            new TextFormField(
              decoration: new InputDecoration(
                  labelText: AppStrings.lastName
              ),
              keyboardType: TextInputType.text,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
            ),
            //--email
            new TextFormField(
              decoration: new InputDecoration(
                  labelText: AppStrings.email,
                  hintText: AppStrings.emailHint
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
            ),
            // -- password
            new TextFormField(
              obscureText: true,
//              focusNode: _n,
              decoration: new InputDecoration(
                labelText: AppStrings.password,
              ),
              keyboardType: TextInputType.text,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
            ),
            // confirm --password
            new TextFormField(
              obscureText: true,
              autofocus: true,
              decoration: new InputDecoration(
                  labelText: AppStrings.confirmPassword
              ),
              keyboardType: TextInputType.text,
              validator: (value)=>InputFieldValidator.ValidateEmpty(value),
            ),
            RaisedButton(
              child: new Text(AppStrings.register),
            ),
          ],
        )
    );
  }
}
