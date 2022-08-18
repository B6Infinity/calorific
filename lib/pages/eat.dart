// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Eat extends StatefulWidget {
  const Eat({Key? key}) : super(key: key);

  @override
  State<Eat> createState() => _EatState();
}

class _EatState extends State<Eat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('EATIN'),
      ),
    );
  }
}
