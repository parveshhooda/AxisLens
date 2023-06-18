import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _employeeId = await secureStorage.getInt('ff_employeeId') ?? _employeeId;
    });
    await _safeInitAsync(() async {
      _username = await secureStorage.getString('ff_username') ?? _username;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _CountMedia = 2;
  int get CountMedia => _CountMedia;
  set CountMedia(int _value) {
    _CountMedia = _value;
  }

  int _employeeId = 0;
  int get employeeId => _employeeId;
  set employeeId(int _value) {
    _employeeId = _value;
    secureStorage.setInt('ff_employeeId', _value);
  }

  void deleteEmployeeId() {
    secureStorage.delete(key: 'ff_employeeId');
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
    secureStorage.setString('ff_username', _value);
  }

  void deleteUsername() {
    secureStorage.delete(key: 'ff_username');
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

  bool _LeaderboardBlurr = false;
  bool get LeaderboardBlurr => _LeaderboardBlurr;
  set LeaderboardBlurr(bool _value) {
    _LeaderboardBlurr = _value;
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
