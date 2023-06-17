// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> registerFormValidate(
    String? name,
    String? customerID,
    String? mobileNumber,
    String? deviceName,
    String? manufacturer,
    String? osVersion,
    String? question,
    String? answer,
    String? employeeID) async {
  // Add your function code here!

  bool nameFlg = false;
  bool customerIDFlg = false;
  bool mobileNumberFlg = false;
  bool deviceNameFlg = false;
  bool manufacturerFlg = false;
  bool osVersionFlg = false;
  bool questionFlg = false;
  bool answerFlg = false;
  bool employeeIDFLG = false;
  if (name != null && !name.isEmpty) {
    nameFlg = true;
  }
  if (employeeID != null && !employeeID.isEmpty) {
    employeeIDFLG = true;
  }
  if (customerID != null && !customerID.isEmpty) {
    customerIDFlg = true;
  }
  if (mobileNumber != null && !mobileNumber.isEmpty) {
    mobileNumberFlg = true;
  }
  if (deviceName != null && !deviceName.isEmpty) {
    deviceNameFlg = true;
  }
  if (manufacturer != null && !manufacturer.isEmpty) {
    manufacturerFlg = true;
  }
  if (osVersion != null && !osVersion.isEmpty) {
    osVersionFlg = true;
  }

  if (question != null && !question.isEmpty) {
    questionFlg = true;
  }
  if (answer != null && !answer.isEmpty) {
    answerFlg = true;
  }

  if (nameFlg &&
      customerIDFlg &&
      mobileNumberFlg &&
      deviceNameFlg &&
      manufacturerFlg &&
      osVersionFlg &&
      questionFlg &&
      answerFlg &&
      employeeIDFLG) {
    return true;
  } else {
    return false;
  }
}
