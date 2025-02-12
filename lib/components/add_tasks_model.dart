import '/flutter_flow/flutter_flow_util.dart';
import 'add_tasks_widget.dart' show AddTasksWidget;
import 'package:flutter/material.dart';

class AddTasksModel extends FlutterFlowModel<AddTasksWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();
  }
}
