import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BugsMediaFilesRecord extends FirestoreRecord {
  BugsMediaFilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "issueKey" field.
  String? _issueKey;
  String get issueKey => _issueKey ?? '';
  bool hasIssueKey() => _issueKey != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "ImageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  void _initializeFields() {
    _issueKey = snapshotData['issueKey'] as String?;
    _image = snapshotData['Image'] as String?;
    _video = snapshotData['Video'] as String?;
    _imageURL = snapshotData['ImageURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BugsMediaFiles');

  static Stream<BugsMediaFilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BugsMediaFilesRecord.fromSnapshot(s));

  static Future<BugsMediaFilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BugsMediaFilesRecord.fromSnapshot(s));

  static BugsMediaFilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BugsMediaFilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BugsMediaFilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BugsMediaFilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BugsMediaFilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BugsMediaFilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBugsMediaFilesRecordData({
  String? issueKey,
  String? image,
  String? video,
  String? imageURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'issueKey': issueKey,
      'Image': image,
      'Video': video,
      'ImageURL': imageURL,
    }.withoutNulls,
  );

  return firestoreData;
}
