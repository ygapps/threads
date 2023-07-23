import 'dart:convert';

import 'package:threads/models/friend.dart';
import 'package:http/http.dart' as http;

class API {
  static const String baseURL = 'http://localhost:3000';

  static const String friends = '${baseURL}/friends';
  static const String sponsers = '${baseURL}/sponsers';
}

class HomeScreenViewModel {
  const HomeScreenViewModel();

  Future<List<Friend>> fetchFriends() async {
    await Future.delayed(const Duration(seconds: 2));
    final response = await http.get(Uri.parse(API.friends));

    if (response.statusCode == 200) {
      return _parseFriends(response.body);
    } else {
      throw Exception("Failure to fetch friends.");
    }
  }

  List<Friend> _parseFriends(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Friend>((json) => Friend.fromJson(json)).toList();
  }
}
