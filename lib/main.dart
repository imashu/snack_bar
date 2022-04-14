import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

  void _showbar() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('login failed')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Add widgets here'),
                ElevatedButton(onPressed: _showbar, child: const Text('Login')),
              ],
            ),
          )),
    );
  }
}
