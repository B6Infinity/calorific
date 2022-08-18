// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                Row(
                  children: [
                    Hero(
                        tag: 'sppedialchild_fireicon',
                        child: Icon(
                          Icons.local_fire_department,
                          size: 60,
                        )),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
