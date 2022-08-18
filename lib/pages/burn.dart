// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calorific/colors/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Burn extends StatefulWidget {
  const Burn({Key? key}) : super(key: key);

  @override
  State<Burn> createState() => _BurnState();
}

Icon icon = Icon(Icons.check);

class _BurnState extends State<Burn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Column(
            children: [
              // MAIN HEAD
              //
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      size: 60,
                      color: Colors.red,
                      shadows: [
                        Shadow(
                          color: Colors.red,
                          blurRadius: 50,
                        )
                      ],
                    ),
                    Text(
                      '486',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 20,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 30,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 50,
                          ),
                          Shadow(
                            color: Colors.red,
                            blurRadius: 55,
                          ),
                        ],
                        fontSize: 55,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'CALORIES BRUNED',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Icon(
                  size: 30,
                  // Dynamic Content:
                  FontAwesomeIcons.personCircleCheck,
                  color: Palette.primary,
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              //
              // Decorate
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(50),
                  topRight: const Radius.circular(50),
                ),
              ),
              //
              // Content
              // child: Column(
              //   children: [
              //     Row(
              //       children: [
              //         Icon(Icons.history),
              //         Text('History...'),
              //       ],
              //     ),
              //     //
              //     //History List
              //
              //   ],
              // ),
            ),
          )
        ]),
      ),
    );
  }
}
