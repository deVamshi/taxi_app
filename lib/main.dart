import 'package:flutter/material.dart';
import 'package:taxi_app/screeens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:taxi_app/screeens/person_details.dart';
import 'package:taxi_app/screeens/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taxi',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PersonDetails(),
    );
  }
}
