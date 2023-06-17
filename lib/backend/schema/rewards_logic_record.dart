import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RewardsLogicRecord extends FirestoreRecord {
  RewardsLogicRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "RewardValue" field.
  String? _rewardValue;
  String get rewardValue => _rewardValue ?? '';
  bool hasRewardValue() => _rewardValue != null;

  void _initializeFields() {
    _priority = snapshotData['Priority'] as String?;
    _rewardValue = snapshotData['RewardValue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RewardsLogic');

  static Stream<RewardsLogicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RewardsLogicRecord.fromSnapshot(s));

  static Future<RewardsLogicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RewardsLogicRecord.fromSnapshot(s));

  static RewardsLogicRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RewardsLogicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RewardsLogicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RewardsLogicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RewardsLogicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RewardsLogicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRewardsLogicRecordData({
  String? priority,
  String? rewardValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Priority': priority,
      'RewardValue': rewardValue,
    }.withoutNulls,
  );

  return firestoreData;
}
