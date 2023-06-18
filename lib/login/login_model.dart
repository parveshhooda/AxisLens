import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/about_the_platform_new_widget.dart';
import '/components/about_the_platform_widget.dart';
import '/components/buffering_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkIfEmployeeIDPersist] action in Login widget.
  bool? employeeIdpersist;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for AboutThePlatform component.
  late AboutThePlatformModel aboutThePlatformModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserRecord? userOutput;
  // Model for Buffering component.
  late BufferingModel bufferingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    aboutThePlatformModel = createModel(context, () => AboutThePlatformModel());
    bufferingModel = createModel(context, () => BufferingModel());
  }

  void dispose() {
    textController?.dispose();
    aboutThePlatformModel.dispose();
    bufferingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
