import 'package:calorific/colors/pallete.dart';
import 'package:calorific/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: generateMaterialColor(Palette.primary),
          textTheme: GoogleFonts.jostTextTheme()),
      darkTheme: ThemeData.dark(),
      // home: const Home(title: 'calorific'),
      home: const Home(),
    );
  }
}

// Custom built funcs
Future showToast(String message) async {
  await Fluttertoast.cancel();

  Fluttertoast.showToast(msg: message);
}
