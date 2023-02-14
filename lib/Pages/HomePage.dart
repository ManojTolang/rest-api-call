import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:games_app/services/fetchdatawithProvider.dart';
import 'package:http/http.dart' as httpClint;
import 'package:games_app/model/games.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [];
  @override
  void initState() {
    Provider.of<fetchdatawithProvider>(context, listen: false).getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Consumer<fetchdatawithProvider>(builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.GameList.length,
            itemBuilder: (context, index) {
              Games games = value.GameList[index];
              return Image.network(games.thumbnail);
            },
          );
        }),
      ),
    );
  }
}
