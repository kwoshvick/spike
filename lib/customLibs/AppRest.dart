import 'package:http/http.dart' as http;
import 'package:spike/customLibs/AppStrings.dart';

class AppRest {

  Future fetch() async {
//        var url = AppStrings.baseUrl+AppStrings.urlLogin;
        final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');


//    final response = await http.post(url,
//          body: {"phone": "123456", "password": "123456789"});
//                                .then((response) {
//                                  print("Response status: ${response.statusCode}");
//                                          print("Response body: ${response.body}");




          if (response.statusCode == 200) {
            // If the call to the server was successful, parse the JSON
//      return Post.fromJson(json.decode(response.body));
//      return response.body;
            print(response.body);
            return response.body;
          } else {
            // If that call was not successful, throw an error.
            throw Exception('Failed to load post');
          }
        }
  }


  void test() {
//    var url = AppStrings.baseUrl+AppStrings.urlLogin;
//    http.post(url, body: {"phone": "123456", "password": "123456789"})
//        .then((response) {
//      print("Response status: ${response.statusCode}");
//      print("Response body: ${response.body}");
//    });
//    }

//  this.fe

  fe

  }
//}
