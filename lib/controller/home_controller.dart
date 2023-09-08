import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/api/api_client.dart';
import 'package:weather_app/data/respons/weather_data.dart';

import '../main.dart';

class HomeController extends GetxController implements GetxService {
  final ApiClient apiClient;
  HomeController({required this.apiClient});

  var weatherData = WeatherData().obs;

  @override
  void onInit() {
    super.onInit();
    home();
  }

  Future<void> home() async {
    try {
      final responseData = await apiClient.getData(
        "https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=j3l1m8aIlhbg0X2sHtzP0loJYBPfMzK0",
      );

      if (responseData != null) {
        final weatherData = WeatherData.fromJson(responseData);
        this.weatherData.value = weatherData;
      } else {
        debugPrint("API response is null.");
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
    update();
  }
}
