// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> findTotalLP() async {
//  print("AcceptedAPIResult" + FFAppState().AcceptedAPIResult.toString());
  print("Accepted API priorities" +
      FFAppState().AcceptedAPIPriorities.toString());
  print("RewardsValue" + FFAppState().RewardsValue.toString());

  int sum = 0;

  List<String> Accepted_API_priorities = FFAppState().AcceptedAPIPriorities;

  List<String> rewardsList = FFAppState().RewardsValue.toString().split(',');

  for (String apiPriority in Accepted_API_priorities) {
    switch (apiPriority) {
      case 'Extensive / Widespread':
        sum = sum + int.parse(rewardsList.elementAt(0));
        break;
      case 'Significant / Large':
        sum = sum + int.parse(rewardsList.elementAt(1));
        break;
      case 'Moderate / Limited':
        sum = sum + int.parse(rewardsList.elementAt(2));
        break;
      case 'Minor / Localized':
        sum = sum + int.parse(rewardsList.elementAt(3));
        break;
      case 'Low':
        sum = sum + int.parse(rewardsList.elementAt(4));
        break;
    }
  }
  // Add your function code here!
  print("sum" + sum.toString());
  return sum;
}
