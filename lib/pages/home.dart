// ignore_for_file: prefer_const_constructors

import 'package:calorific/main.dart';
import 'package:calorific/pages/burn.dart';
import 'package:calorific/pages/eat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '{JSON PLEASE}',
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Color(0xff7B9972),
        spacing: 20,
        children: [
          SpeedDialChild(
            child: Icon(Icons.restaurant),
            // label: 'Eat',
            backgroundColor: Color(0xff00D807),
            onTap: () {
              // Navigate to Eat.dart
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Eat()),
              );
            },
          ),
          SpeedDialChild(
            child: Icon(
              Icons.local_fire_department,
            ),
            backgroundColor: Colors.red,
            // label: 'Burn',
            onTap: () {
              // Navigate to Burn.dart
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Burn()));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'calorific!',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
