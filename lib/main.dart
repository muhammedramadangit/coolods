import 'package:coolods/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFFffae00),
    ),
    home: LoginPage(),
  ));
}
