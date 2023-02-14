import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:games_app/methods/fetchdata.dart';
import 'package:games_app/model/games.dart';

class fetchdatawithProvider with ChangeNotifier {
  List<Games> GameList = [];
  fetchdata fetcheddata = fetchdata();
  Future<void> getList() async {
    GameList = await fetcheddata.fetchDataFromServer();
    notifyListeners();
  }
}
