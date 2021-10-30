import 'dart:convert';
import 'package:dev_notebook/flutter_dart/network.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

// for test prefer not to fetch from real api, you don't know what you receive,use http testing library
void main() {
  test('FetchTopIds returns a list of ids', () async {
    // setup of test case

    final newsApi = NewsApiProvider()
      ..client = MockClient((request) async {
        return Response(json.encode([1, 2, 3, 4]), 200);
      });
    final ids = await newsApi.fetchTopId();

    //expectation
    expect(ids, [1, 2, 3, 4]);
  });

  test('fetchItem return Model', () async {
    final newsApi = NewsApiProvider()
      ..client = MockClient((request) async {
        final jsonMap = {'id': 123};
        return Response(json.encode(jsonMap), 200);
      });
    final item = await newsApi.fetchItemFromId(222);
    expect(item.id, 123);
  });
}
