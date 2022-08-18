// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Burn extends StatefulWidget {
  const Burn({Key? key}) : super(key: key);

  @override
  State<Burn> createState() => _BurnState();
}

class _BurnState extends State<Burn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),

          // MAIN COLUMN
          child: Column(children: [
            Column(
              children: [
                // MAIN HEAD
                //
                Padding(
                  padding: EdgeInsets.only(top: 20),
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

                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 40),
                      child: Text(
                        'CALORIES BRUNED',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      )),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
