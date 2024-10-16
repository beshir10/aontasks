import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class postService{
  Future post(String comment) async{
    final http.Response response= await http.post(
        Uri.parse('https://dummyjson.com/comments/add'),
        headers: {
          'Content-type': 'application/json',
        },
        body: convert.json.encode({"body": comment, "postId":3, "userId":5})
    );


    if (response.statusCode == 201){
      print('ok Done');
      print(response.body);
      return convert.json.decode(response.body);

    }else{
      print('error');
      return convert.json.decode(response.body);
    }
  }
}