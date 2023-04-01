import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestApiApp(),
    );
  }
}
class RestApiApp extends StatefulWidget {
  const RestApiApp({Key? key}) : super(key: key);

  @override
  State<RestApiApp> createState() => _RestApiAppState();
}

class _RestApiAppState extends State<RestApiApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
