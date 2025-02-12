import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Sign-EMail widget.
  FocusNode? signEMailFocusNode;
  TextEditingController? signEMailTextController;
  String? Function(BuildContext, String?)? signEMailTextControllerValidator;
  String? _signEMailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Sign-Password widget.
  FocusNode? signPasswordFocusNode;
  TextEditingController? signPasswordTextController;
  late bool signPasswordVisibility;
  String? Function(BuildContext, String?)? signPasswordTextControllerValidator;
  String? _signPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Sign-ConfirmPassword widget.
  FocusNode? signConfirmPasswordFocusNode;
  TextEditingController? signConfirmPasswordTextController;
  late bool signConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signConfirmPasswordTextControllerValidator;
  String? _signConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Login-Email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  // State field(s) for Login-Password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signEMailTextControllerValidator = _signEMailTextControllerValidator;
    signPasswordVisibility = false;
    signPasswordTextControllerValidator = _signPasswordTextControllerValidator;
    signConfirmPasswordVisibility = false;
    signConfirmPasswordTextControllerValidator =
        _signConfirmPasswordTextControllerValidator;
    loginPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signEMailFocusNode?.dispose();
    signEMailTextController?.dispose();

    signPasswordFocusNode?.dispose();
    signPasswordTextController?.dispose();

    signConfirmPasswordFocusNode?.dispose();
    signConfirmPasswordTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
