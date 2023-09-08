import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;
import 'package:flutter/foundation.dart' as Foundation;

import 'package:http/http.dart' as http;

class ApiClient extends GetxService {
  final int timeoutInSeconds = 100;
  late Map<String, String> _mainHeaders;

  ApiClient(){
    updateHeader();
  }

  Future<void> updateHeader() async {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=utf-8',
      // 'Authorization': 'Bearer $tokenValue',
    };
  }

  Future<dynamic> getData(String uri) async {
    final url = Uri.parse(uri);

    try {
      final response = await Http.get(url);

      if (response.statusCode == 200) {
        if (response.body != null && response.body.isNotEmpty) {
          debugPrint("API response body is work");
          return jsonDecode(response.body);
        } else {
          debugPrint("API response body is empty.");
          return null;
        }
      } else {
        debugPrint("API response status code is not 200: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      debugPrint('====> getData error: $e');
      return null;
    }
  }


}
