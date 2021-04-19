// ----------Working with JSON------------
//
//           by Stephen Grinder
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
      : name = parsedJson['name'],
        age = parsedJson['age'];
}
