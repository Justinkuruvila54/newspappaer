// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:newspappaer/controller/homescreen_controller.dart';
import 'package:newspappaer/model/homescreenmodel/homescreenmodel.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    fetchdataa();
    super.initState();
  }

  Future<void> fetchdataa() async {
    await Provider.of<Homescreencontroller>(context, listen: false)
        .fetchdataa();
  }

  @override
  Widget build(BuildContext context) {
    final contrllob = Provider.of<Homescreencontroller>(context);
    return Scaffold(
      body: Consumer(
          builder: (context, value, child) => ListView.builder(
                itemCount: contrllob.responesmodel.newspapers?.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text(contrllob.responesmodel.newspapers?[index].lccn ??
                            "fghj"),
                        Text(contrllob.responesmodel.newspapers?[index].url ??
                            "fghj"),
                        Text(contrllob.responesmodel.newspapers?[index].state ??
                            "fghj"),
                        Text(contrllob.responesmodel.newspapers?[index].lccn ??
                            "fghj"),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
