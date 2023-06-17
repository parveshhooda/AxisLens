import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/about_the_platform_new_widget.dart';
import '/components/buffering_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class DashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAcceptedIssues)] action in Dashboard widget.
  ApiCallResponse? apiResultj1o;
  // Stores action output result for [Backend Call - API (getIssues)] action in Dashboard widget.
  ApiCallResponse? empid;
  List<RewardsLogicRecord> simpleSearchResults = [];
  // Stores action output result for [Custom Action - findTotalLP] action in Dashboard widget.
  int? lp;
  // Model for Buffering component.
  late BufferingModel bufferingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bufferingModel = createModel(context, () => BufferingModel());
  }

  void dispose() {
    bufferingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
