import 'package:flutter/material.dart';

final ThemeData kAppTheme = ThemeData(
  // This is the theme of your application.
  //
  // Try running your application with "flutter run". You'll see the
  // application has a blue toolbar. Then, without quitting the app, try
  // changing the primarySwatch below to Colors.green and then invoke
  // "hot reload" (press "r" in the console where you ran "flutter run",
  // or simply save your changes to "hot reload" in a Flutter IDE).
  // Notice that the counter didn't reset back to zero; the application
  // is not restarted.
  primarySwatch: Colors.blue,
  backgroundColor: Color(0xFF1D1E33),
  // This makes the visual density adapt to the platform that you run
  // the app on. For desktop platforms, the controls will be smaller and
  // closer together (more dense) than on mobile platforms.
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

String kCarbonTopic = 'Reducing Carbon Emissions';
String kRaceTopic = 'Reducing Racial Injustice';
String kPlasticTopic = 'Reducing Plastic Pollution';

//placeholder styles for now; change them here
TextStyle kTodoItemTextStyle = kAppTheme.textTheme.subtitle1;
TextStyle kTodoNoteTextStyle = kAppTheme.textTheme.subtitle2;

const InputDecoration kTodoInputDecoration =
    InputDecoration(hintText: 'Add your own task');
