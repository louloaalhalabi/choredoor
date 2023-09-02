import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path/path.dart' as path;

class GetPost {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        return responseBody;
      } else {
        print("Error ${response.statusCode}");
      }
    } catch (e) {
      print("Error catch ${e}");
    }
  }

  postRequest(String url, Map<String, dynamic> data) async {
    try {
      var api = Uri.parse(url);
      var response = await http.post(api,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer 1|Oj4D4jFBnsktXtfKaHSpkDsqC2i5lzL7YdJvH9H9'
          },
          body: data);

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        print(responseBody);
        return responseBody;
      } else {
        print("try error ${response.statusCode}");
      }
    } catch (e) {
      print("Error catch ${e}");
    }
  }

  postRequestWithFile(String url, Map data, File file) async {
    var request = http.MultipartRequest("POST", Uri.parse(url));
    var length = await file.length();
    var stream = http.ByteStream(file.openRead());
    var multipartFile = http.MultipartFile("file", stream, length,
        filename: path.basename(file.path));
    request.files.add(multipartFile);
    data.forEach((key, value) {
      request.fields[key] = value;
    });
    var myrequest = await request.send();
    var response = await http.Response.fromStream(myrequest);
    if (myrequest.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print("Error ${myrequest.statusCode}");
    }
  }
}
