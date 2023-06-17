import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user-name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "customer-id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "device-name" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  bool hasDeviceName() => _deviceName != null;

  // "manufacturer" field.
  String? _manufacturer;
  String get manufacturer => _manufacturer ?? '';
  bool hasManufacturer() => _manufacturer != null;

  // "os-version" field.
  String? _osVersion;
  String get osVersion => _osVersion ?? '';
  bool hasOsVersion() => _osVersion != null;

  // "is-locked" field.
  bool? _isLocked;
  bool get isLocked => _isLocked ?? false;
  bool hasIsLocked() => _isLocked != null;

  // "employee-id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "LPRedeemed" field.
  int? _lPRedeemed;
  int get lPRedeemed => _lPRedeemed ?? 0;
  bool hasLPRedeemed() => _lPRedeemed != null;

  // "LPEarned" field.
  int? _lPEarned;
  int get lPEarned => _lPEarned ?? 0;
  bool hasLPEarned() => _lPEarned != null;

  // "LeaderboardActive" field.
  String? _leaderboardActive;
  String get leaderboardActive => _leaderboardActive ?? '';
  bool hasLeaderboardActive() => _leaderboardActive != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user-name'] as String?;
    _customerId = snapshotData['customer-id'] as String?;
    _deviceName = snapshotData['device-name'] as String?;
    _manufacturer = snapshotData['manufacturer'] as String?;
    _osVersion = snapshotData['os-version'] as String?;
    _isLocked = snapshotData['is-locked'] as bool?;
    _employeeId = snapshotData['employee-id'] as String?;
    _question = snapshotData['question'] as String?;
    _answer = snapshotData['answer'] as String?;
    _lPRedeemed = snapshotData['LPRedeemed'] as int?;
    _lPEarned = snapshotData['LPEarned'] as int?;
    _leaderboardActive = snapshotData['LeaderboardActive'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? customerId,
  String? deviceName,
  String? manufacturer,
  String? osVersion,
  bool? isLocked,
  String? employeeId,
  String? question,
  String? answer,
  int? lPRedeemed,
  int? lPEarned,
  String? leaderboardActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user-name': userName,
      'customer-id': customerId,
      'device-name': deviceName,
      'manufacturer': manufacturer,
      'os-version': osVersion,
      'is-locked': isLocked,
      'employee-id': employeeId,
      'question': question,
      'answer': answer,
      'LPRedeemed': lPRedeemed,
      'LPEarned': lPEarned,
      'LeaderboardActive': leaderboardActive,
    }.withoutNulls,
  );

  return firestoreData;
}
