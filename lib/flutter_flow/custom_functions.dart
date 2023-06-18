import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? changeDateFormat(String date) {
  DateFormat inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
  DateTime dateTime = inputFormat.parse(date);

  DateFormat outputFormat = DateFormat('dd MMM yyyy');
  String formattedDate = outputFormat.format(dateTime);
  return formattedDate;
}

int? calculateIndividualLP(
  String? priority,
  String? rewardsValueslist,
) {
  int sum = 0;
  print("rewardsValueslist: " + rewardsValueslist.toString());
  // List<String> Accepted_API_priorities = FFAppState().AcceptedAPIPriorities;

  List<String> rewardsList = rewardsValueslist.toString().split(',');
  print("reward list: " + rewardsList.toString());
  print("priority : " + priority.toString());
  switch (priority) {
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

  // Add your function code here!
  return sum;
}

String? getGreetingsMessage() {
  // get greeting message based on time of the day
  var now = new DateTime.now();
  var hour = now.hour;
  var minute = now.minute;
  var greeting;

  if (hour < 12) {
    greeting = 'Good Morning';
  } else if (hour < 18) {
    greeting = 'Good Afternoon';
  } else {
    greeting = 'Good Evening';
  }

  return greeting;
}

int subtraction(
  int totalLP,
  int redeemedLP,
) {
  return (totalLP - redeemedLP);
}

bool redemptionPossibleFlag(
  String redeemValue,
  int maxRedumptionPossible,
) {
  print("redeemValue: " + redeemValue);
  print("maxRedumptionPossible: " + maxRedumptionPossible.toString());
  if (maxRedumptionPossible >= int.parse(redeemValue) &&
      int.parse(redeemValue) >= 0) {
    return true;
  } else
    return false;
}

String? toUpperCase(String? convertMeToUpperCase) {
  return convertMeToUpperCase!.toUpperCase();
}
