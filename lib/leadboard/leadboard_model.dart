import '/backend/backend.dart';
import '/components/leaderboard_buffer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class LeadboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  List<UserRecord> simpleSearchResults = [];
  // Model for LeaderboardBuffer component.
  late LeaderboardBufferModel leaderboardBufferModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    leaderboardBufferModel =
        createModel(context, () => LeaderboardBufferModel());
  }

  void dispose() {
    leaderboardBufferModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
