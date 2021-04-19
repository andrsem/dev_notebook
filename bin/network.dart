// ----------Working with JSON------------
//
//           by Stephen Grinder
import 'package:http/http.dart' show Client;
//
// 1. make HTTP request
// 2. decode JSON
// 3. put JSON into a model class
//

class Model {
  final String name;
  final int age;

// named constructor
  Model.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson['name'] as String,
        age = parsedJson['age'] as int;
}

// create api provider (hacker news api example)
class ApiProvider {
  Client client = Client();
  void fetchTopId() {
    client.get(Uri.parse('top id url'));
  }

  void fetchItemFromId() {}
}
