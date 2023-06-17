// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:io';

Future<String> createNewIssue() async {
  // Add your function code here!

  // help write a function with 3 input parameters to call REST API service with JSON body via POST
  var url = 'https://api.github.com/repos/flutter/flutter/issues';
  var body = json.encode({
    'title': 'test',
    'body': 'test',
    'assignees': ['flutter'],
    'milestone': 1,
    'labels': ['bug']
  });
  var httpClient = new HttpClient();
  var request = await httpClient.postUrl(Uri.parse(url));
  request.headers.set('content-type', 'application/json');
  request.add(utf8.encode(body));
  var response = await request.close();
  var responseBody = await response.transform(utf8.decoder).join();
  return responseBody;
}
