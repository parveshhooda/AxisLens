import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _employeeId = prefs.getInt('ff_employeeId') ?? _employeeId;
    });
    _safeInit(() {
      _username = prefs.getString('ff_username') ?? _username;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _CountMedia = 2;
  int get CountMedia => _CountMedia;
  set CountMedia(int _value) {
    _CountMedia = _value;
  }

  int _employeeId = 0;
  int get employeeId => _employeeId;
  set employeeId(int _value) {
    _employeeId = _value;
    prefs.setInt('ff_employeeId', _value);
  }

  String _securityAnswer = '';
  String get securityAnswer => _securityAnswer;
  set securityAnswer(String _value) {
    _securityAnswer = _value;
  }

  int _securityQuestionAttempts = 0;
  int get securityQuestionAttempts => _securityQuestionAttempts;
  set securityQuestionAttempts(int _value) {
    _securityQuestionAttempts = _value;
  }

  bool _wrongAttemptFlag = false;
  bool get wrongAttemptFlag => _wrongAttemptFlag;
  set wrongAttemptFlag(bool _value) {
    _wrongAttemptFlag = _value;
  }

  bool _LockedFlag = false;
  bool get LockedFlag => _LockedFlag;
  set LockedFlag(bool _value) {
    _LockedFlag = _value;
  }

  bool _RegisterFormValidated = false;
  bool get RegisterFormValidated => _RegisterFormValidated;
  set RegisterFormValidated(bool _value) {
    _RegisterFormValidated = _value;
  }

  bool _APIFialureFlag = false;
  bool get APIFialureFlag => _APIFialureFlag;
  set APIFialureFlag(bool _value) {
    _APIFialureFlag = _value;
  }

  List<dynamic> _AcceptedAPIResult = [];
  List<dynamic> get AcceptedAPIResult => _AcceptedAPIResult;
  set AcceptedAPIResult(List<dynamic> _value) {
    _AcceptedAPIResult = _value;
  }

  void addToAcceptedAPIResult(dynamic _value) {
    _AcceptedAPIResult.add(_value);
  }

  void removeFromAcceptedAPIResult(dynamic _value) {
    _AcceptedAPIResult.remove(_value);
  }

  void removeAtIndexFromAcceptedAPIResult(int _index) {
    _AcceptedAPIResult.removeAt(_index);
  }

  void updateAcceptedAPIResultAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AcceptedAPIResult[_index] = updateFn(_AcceptedAPIResult[_index]);
  }

  String _RewardsValue = '';
  String get RewardsValue => _RewardsValue;
  set RewardsValue(String _value) {
    _RewardsValue = _value;
  }

  List<String> _AcceptedAPIPriorities = [];
  List<String> get AcceptedAPIPriorities => _AcceptedAPIPriorities;
  set AcceptedAPIPriorities(List<String> _value) {
    _AcceptedAPIPriorities = _value;
  }

  void addToAcceptedAPIPriorities(String _value) {
    _AcceptedAPIPriorities.add(_value);
  }

  void removeFromAcceptedAPIPriorities(String _value) {
    _AcceptedAPIPriorities.remove(_value);
  }

  void removeAtIndexFromAcceptedAPIPriorities(int _index) {
    _AcceptedAPIPriorities.removeAt(_index);
  }

  void updateAcceptedAPIPrioritiesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _AcceptedAPIPriorities[_index] = updateFn(_AcceptedAPIPriorities[_index]);
  }

  int _LP = 0;
  int get LP => _LP;
  set LP(int _value) {
    _LP = _value;
  }

  bool _ISWEEKLY = false;
  bool get ISWEEKLY => _ISWEEKLY;
  set ISWEEKLY(bool _value) {
    _ISWEEKLY = _value;
  }

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    prefs.setString('ff_username', _value);
  }

  int _maxPointsRedeemable = 0;
  int get maxPointsRedeemable => _maxPointsRedeemable;
  set maxPointsRedeemable(int _value) {
    _maxPointsRedeemable = _value;
  }

  bool _RedemptionAllowedLimitCrossed = false;
  bool get RedemptionAllowedLimitCrossed => _RedemptionAllowedLimitCrossed;
  set RedemptionAllowedLimitCrossed(bool _value) {
    _RedemptionAllowedLimitCrossed = _value;
  }

  bool _RedeemButtonFlag = false;
  bool get RedeemButtonFlag => _RedeemButtonFlag;
  set RedeemButtonFlag(bool _value) {
    _RedeemButtonFlag = _value;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool _value) {
    _isLoading = _value;
  }

  int _totalBugsRaised = 0;
  int get totalBugsRaised => _totalBugsRaised;
  set totalBugsRaised(int _value) {
    _totalBugsRaised = _value;
  }

  bool _AboutTheAppFlag = false;
  bool get AboutTheAppFlag => _AboutTheAppFlag;
  set AboutTheAppFlag(bool _value) {
    _AboutTheAppFlag = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
