import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RaiseBugsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for issueTitle widget.
  TextEditingController? issueTitleController;
  String? Function(BuildContext, String?)? issueTitleControllerValidator;
  String? _issueTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for issueDesc widget.
  TextEditingController? issueDescController;
  String? Function(BuildContext, String?)? issueDescControllerValidator;
  String? _issueDescControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for issueDateTime widget.
  TextEditingController? issueDateTimeController;
  String? Function(BuildContext, String?)? issueDateTimeControllerValidator;
  // State field(s) for issueImpact widget.
  String? issueImpactValue;
  FormFieldController<String>? issueImpactValueController;
  // Stores action output result for [Backend Call - API (createIssueNew)] action in formSubmitBtn widget.
  ApiCallResponse? apiResultira;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    issueTitleControllerValidator = _issueTitleControllerValidator;
    issueDescControllerValidator = _issueDescControllerValidator;
  }

  void dispose() {
    issueTitleController?.dispose();
    issueDescController?.dispose();
    issueDateTimeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
