
class InputFieldValidator {

  static ValidateEmail(String email){
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email)){
      return 'Enter Valid Email';
    }
    else{
      return null;
    }
  }



  static ValidateEmpty(String value){
    if (value.isEmpty) {
      return 'Field cannot be empty !';
    }else{
      return null;
    }
  }

   static ValidatePassword(String password){
    if(password.length < 5){
      return 'Password must be more than 5 charater';
    }else{
      return false;
    }
  }

}