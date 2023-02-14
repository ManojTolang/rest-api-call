import 'dart:convert';

import 'package:games_app/model/games.dart';

import 'package:http/http.dart' as httpClint;

class fetchdata {
  List<Games> data = [];
  Future<List<Games>> fetchDataFromServer() async {
    try {
      final endPoint =
          Uri.https('free-to-play-games-database.p.rapidapi.com', '/api/games');
      final response = await httpClint.get(endPoint, headers: {
        "X-RapidAPI-Key": "7c212751d7mshec3fafaa26a8193p1cd28cjsnee2cf0bd0acb",
        "X-RapidAPI-Host": "free-to-play-games-database.p.rapidapi.com",
        "useQueryString": 'true'
      });
      if (response.statusCode == 200) {
        final body = response.body;
        final List decoded = json.decode(body);

        List<Games> ConvertedList =
            decoded.map((item) => Games.fromJson(item)).toList();
        data = ConvertedList;
      }
    } catch (e) {}
    return data;
  }
}
