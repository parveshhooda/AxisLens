import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RedeemedRecord extends FirestoreRecord {
  RedeemedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "LPRedeemed" field.
  int? _lPRedeemed;
  int get lPRedeemed => _lPRedeemed ?? 0;
  bool hasLPRedeemed() => _lPRedeemed != null;

  // "EmployeeId" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "isLPCredited" field.
  bool? _isLPCredited;
  bool get isLPCredited => _isLPCredited ?? false;
  bool hasIsLPCredited() => _isLPCredited != null;

  void _initializeFields() {
    _lPRedeemed = snapshotData['LPRedeemed'] as int?;
    _employeeId = snapshotData['EmployeeId'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _isLPCredited = snapshotData['isLPCredited'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Redeemed');

  static Stream<RedeemedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RedeemedRecord.fromSnapshot(s));

  static Future<RedeemedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RedeemedRecord.fromSnapshot(s));

  static RedeemedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RedeemedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RedeemedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RedeemedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RedeemedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RedeemedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRedeemedRecordData({
  int? lPRedeemed,
  String? employeeId,
  DateTime? timeStamp,
  bool? isLPCredited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LPRedeemed': lPRedeemed,
      'EmployeeId': employeeId,
      'TimeStamp': timeStamp,
      'isLPCredited': isLPCredited,
    }.withoutNulls,
  );

  return firestoreData;
}
