import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper({required this.url});

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String Data = response.body;
      return jsonDecode(Data);
    } else {
      print(response.statusCode);
    }
  }
}
