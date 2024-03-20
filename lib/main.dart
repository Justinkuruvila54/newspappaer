// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newspappaer/controller/homescreen_controller.dart';
import 'package:newspappaer/view/homescreen/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Homescreencontroller())
        ],
        child: MaterialApp(
          home: Homescreen(),
        ));
  }
}
