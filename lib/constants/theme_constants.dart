import 'package:flutter/material.dart';
import 'app_config.dart' as config;

// Light theme config.
final lightTheme = ThemeData(
	fontFamily: 'Rubik',
	primaryColor: Colors.white,
	brightness: Brightness.light,
	accentColor: config.Colors().mainColor(1),
	focusColor: config.Colors().accentColor(1),
	hintColor: config.Colors().secondColor(1),
	textTheme: TextTheme(
		headline: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500 , color: Colors.white),
		display1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white),
		display2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1)),
		display3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
		display4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1)),
		subhead: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, color: config.Colors().hintColor(0.8)),
		title: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1)),
		body1: TextStyle(fontSize: 12.0, color: config.Colors().secondColor(1)),
		body2: TextStyle(fontSize: 14.0, color: config.Colors().secondColor(1)),
		caption: TextStyle(fontSize: 12.0, color: config.Colors().accentColor(1)),
		button: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
	),
);