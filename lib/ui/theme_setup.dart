import 'package:flutter/material.dart';

List<ThemeData> getThemes() => [
      ThemeData(
          backgroundColor: Colors.blue,
          colorScheme: const ColorScheme.light(
            primary: Colors.blue,
            secondary: Colors.blueAccent,
          )),ThemeData(
          backgroundColor: Colors.red,
          colorScheme: const ColorScheme.light(
            primary: Colors.red,
            secondary: Colors.redAccent,
          )),ThemeData(
          backgroundColor: Colors.purple,
          colorScheme: const ColorScheme.light(
            primary: Colors.purple,
            secondary: Colors.purpleAccent,
          )),ThemeData(
          backgroundColor: Colors.teal,
          colorScheme: const ColorScheme.light(
            primary: Colors.teal,
            secondary: Colors.tealAccent,
          )),ThemeData(
          backgroundColor: Colors.pink,
          colorScheme: const ColorScheme.light(
            primary: Colors.pink,
            secondary: Colors.pinkAccent,
          )),ThemeData(
          backgroundColor: Colors.green,
          colorScheme: const ColorScheme.light(
            primary: Colors.green,
            secondary: Colors.greenAccent,
          )),
    ];
