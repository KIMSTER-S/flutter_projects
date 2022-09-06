import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('I Am Poor'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/avatar.png'),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
