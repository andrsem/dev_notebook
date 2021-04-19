// ----------Working with JSON------------
//
//           by Stephen Grinder
// 1. make HTTP request
// 2. decode JSON
// 3. put JSON into a model class
import 'dart:convert';
import 'package:http/http.dart' show Client;

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
class NewsApiProvider implements Source {
  Client client = Client();
  @override
  Future<List<int>> fetchTopId() async {
    final response = await client.get(Uri.parse('$_url/topstories.json'));
    final ids = json.decode(response.body) as List;
    return ids.cast<int>();
  }

  @override
  Future<NewsModel> fetchItemFromId(int id) async {
    final response = await client.get(Uri.parse('$_url/item$id'));
    final parsedJson = json.decode(response.body) as Map<String, dynamic>;
    return NewsModel.fromJson(parsedJson);
  }
}

// create this abstract class to be able to connect different providers to repository
abstract class Source {
  Future<List<int>> fetchTopId();
  Future<NewsModel> fetchItemFromId(int id);
}

// cache data to DB
abstract class Cache {
  void adItem();
}

// repository class if data is in DB use it if not fetch and store data to DB
class Repository {
  NewsApiProvider apiProvider = NewsApiProvider();
  Future fetchTopIds() => apiProvider.fetchTopId();

  Future<NewsModel> fetchItem(int id) async {
    // check for item in DB if yes return item
    // if not
    var item = await apiProvider.fetchItemFromId(id);
    // add item to db
    return item;
  }
}
