import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeeklyChallengeRecord extends FirestoreRecord {
  WeeklyChallengeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "reward_points" field.
  int? _rewardPoints;
  int get rewardPoints => _rewardPoints ?? 0;
  bool hasRewardPoints() => _rewardPoints != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _rewardPoints = snapshotData['reward_points'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WeeklyChallenge');

  static Stream<WeeklyChallengeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeeklyChallengeRecord.fromSnapshot(s));

  static Future<WeeklyChallengeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeeklyChallengeRecord.fromSnapshot(s));

  static WeeklyChallengeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeeklyChallengeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeeklyChallengeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeeklyChallengeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeeklyChallengeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeeklyChallengeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeeklyChallengeRecordData({
  String? description,
  String? title,
  bool? isActive,
  int? rewardPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'title': title,
      'is_active': isActive,
      'reward_points': rewardPoints,
    }.withoutNulls,
  );

  return firestoreData;
}
