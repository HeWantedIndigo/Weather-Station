import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Conditions with ChangeNotifier {

  String temperature = "";
  String humidity = "";
  String url = "";

  Future<void> setTemperature() async {
    final tempUrl = url + "/temperature.json";
    print(tempUrl);
    try {
      final response = await http.get(tempUrl);
      final extractedData = json.decode(response.body) as String;
      print(response.body);
      print("String - " + extractedData);
      temperature = extractedData + " °C";
      print(temperature);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> setHumidty() async {
    final humUrl = url + "/humidity.json";
    print(humUrl);
    try {
      final response = await http.get(humUrl);
      final extractedData = json.decode(response.body) as String;
      print("Humidty - " +response.body);
      humidity = extractedData + "%";
      print(humidity);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  List returnValues () {
    return [temperature, humidity];
  }

  void setUrlKey (String userKey) {
    url = userKey;
    notifyListeners();
  }

}