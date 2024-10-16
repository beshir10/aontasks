import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class putService {
  Future put(String comment) async {
    final http.Response response = await http.put(
        Uri.parse('https://dummyjson.com/comments/1'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: convert.json.encode({"body": comment,}));

    if (response.statusCode == 200) {
      print("Ok Done");
      print(response.body);
      return convert.json.decode(response.body);
    } else {
      print("ERROR");
      return convert.json.decode(response.body);
    }
  }
}