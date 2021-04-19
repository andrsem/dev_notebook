// ----------Working with JSON------------
//
//           by Stephen Grinder
import 'dart:convert';
import 'package:http/http.dart' show Client;
//
// 1. make HTTP request
// 2. decode JSON
// 3. put JSON into a model class
//

class NewsModel {
  final String title;
  final int id;

// named constructor
  NewsModel.fromJson(Map<String, dynamic> parsedJson)
      : title = parsedJson['title'] as String,
        id = parsedJson['id'] as int;
}

const _url = 'https://hacker-news.firebaseio.com/v0';

// create api provider (hacker news api example)
class NewsApiProvider {
  Client client = Client();
  Future<List> fetchTopId() async {
    final response = await client.get(Uri.parse('$_url/topstories.json'));
    final ids = json.decode(response.body) as List;
    return ids;
  }

  Future<NewsModel> fetchItemFromId(int id) async {
    final response = await client.get(Uri.parse('$_url/item$id'));
    final parsedJson = json.decode(response.body) as Map<String, dynamic>;
    return NewsModel.fromJson(parsedJson);
  }
}
