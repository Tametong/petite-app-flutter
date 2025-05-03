import 'package:flutter/material.dart';
import 'package:groupe8/homePage.dart';
import 'package:groupe8/introductionScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.indigoAccent,
          colorScheme: ColorScheme.light(
            background: Colors.white
          ),
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.indigoAccent
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              minimumSize: const Size(25, 25),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Introductionscreen(),
    );
   
  }
}
