// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors/pallete.dart';

class Eat extends StatefulWidget {
  const Eat({Key? key}) : super(key: key);

  @override
  State<Eat> createState() => _EatState();
}

class _EatState extends State<Eat> {
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
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Palette.primary,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          //
                          // Inside the Dialogue
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      label: Text('Enter Calories consumed'),
                                      border: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                        color: Palette.primary,
                                        width: 2,
                                      )),
                                      hintText: '420.69',
                                      prefixIcon: Icon(Icons.add),
                                    ),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.done,
                                  ),
                                  Divider(),
                                  ElevatedButton(
                                    onPressed: () {
                                      // BACKEND
                                      // ____
                                      // Close Dialog
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Palette.blue_v,
                                    ),
                                    child: Text('Add to Body'),
                                  )
                                ]),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('EAT'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'History',
                  style: TextStyle(
                    color: Palette.white_v,
                  ),
                ),
              ),
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
