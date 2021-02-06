import 'dart:io';

import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/models/baker_system_model.dart';
import 'package:http/http.dart' as http;

// Gets data from firebase and returns baker object
Future<Baker> getData() async {
  final response = await http.get('${Constants.BASE_URL}.json');
  if (response.statusCode == HttpStatus.ok) {
    var baker = bakerFromJson(response.body);
    return baker;
  }
  return null;
}
