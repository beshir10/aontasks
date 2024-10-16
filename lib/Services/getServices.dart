import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;

class getServices {
  Future get() async{
    final result = await http.get(
        Uri.parse('https://dummyjson.com/comments')
    );

    var finalResult=jsonDecode(result.body);
    print('$finalResult');
    return finalResult;
  }

}