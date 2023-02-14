import 'package:flutter/material.dart';
import 'package:games_app/Pages/HomePage.dart';
import 'package:games_app/services/fetchdatawithProvider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => fetchdatawithProvider(),
      child: MaterialApp(
        title: "Games",
        home:HomePage(),
      ),
    );
  }
}