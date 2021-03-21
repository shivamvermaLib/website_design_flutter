import 'dart:convert';

import 'package:http/http.dart' as http;

class ServerAPI {
  var client = http.Client();

  Future<List<String>> getImages() async {
    final response = await client
        .get(Uri.parse("https://picsum.photos/v2/list?page=1&limit=200"));
    List list = jsonDecode(response.body);
    final images = list.map((e) => e["download_url"].toString()).toList();
    return images;
  }
}
