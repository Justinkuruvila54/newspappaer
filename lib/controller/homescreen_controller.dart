import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:newspappaer/model/homescreenmodel/homescreenmodel.dart';

class Homescreencontroller with ChangeNotifier {
  Sampleresmode responesmodel = Sampleresmode();

  Future<void> fetchdataa() async {
    final Url = Uri.parse("https://chroniclingamerica.loc.gov/newspapers.json");
    final response = await http.get(Url);
    if (response.statusCode == 200) {
      final decodeddata = jsonDecode(response.body);
      responesmodel = Sampleresmode.fromJson(decodeddata);
    } else {
      print("fail");
    }
  }
}
