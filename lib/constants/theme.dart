import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  // UI
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xff5A5146),
      secondary: const Color(0xFFFAEBDA),
      outline: const Color(0xff5A5146)),
  // font
  fontFamily: 'Mansalva',
  //text style
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 52.0, fontWeight: FontWeight.bold, color: Color(0xff5A5146)),
    headline6: TextStyle(
        fontSize: 36.0, fontStyle: FontStyle.italic, color: Color(0xff5A5146)),
    bodyText1: TextStyle(fontSize: 14.0, color: Color(0xff5A5146)),
    caption: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
  ),
);
