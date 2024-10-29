import 'dart:convert';

import 'package:http/http.dart' as http;

class Crud {
  // C create , R read , U update , D delete

  Future get() async {
    http.Response request = await http.get(Uri.parse('https://dummyjson.com/users/1'));
    if (request.statusCode == 200) {
      var result = jsonDecode(request.body);
      print(result);
      return result;
    } else {
      return "error to get result";
    }
  }

  // used in post function
  post(String email ,String firsname ,String lastname) async {
    try {
      var request =
      await http.post(Uri.parse("https://dummyjson.com/products/add"),
          body: ({
            "email": email,
            "firstName":firsname,
            "lastName":lastname
          }));
      if (request.statusCode == 201) {
        var result = jsonEncode(request.body);
        print(request.statusCode);
        print(result);
        return result;
      } else {
        return "error to get result";
      }
    } catch (e) {
      print("error1 $e");
    }
  }

  put(String email ) async {
    try {
      var request = await http.put(
          Uri.parse('https://dummyjson.com/users/2'),
          body: ({"email": email,

          }));

      if (request.statusCode == 200) {
        var result = jsonEncode(request.body.toString());
        print(result);
        return result;
      } else {
        print("Error 1");
        return "error to get result";
      }
    } catch (e) {
      print("error2 ");
    }
  }

  delete(double id) async {
    try {
      var request = await http.delete(
        Uri.parse('https://dummyjson.com/users/$id'),
      );
      if (request.statusCode == 200) {
        var result = jsonEncode(request.body.toString());
        print(result);
        return result;
      } else {
        return "error to get result";
      }
    } catch (e) {
      print("error1");
    }
  }
}
