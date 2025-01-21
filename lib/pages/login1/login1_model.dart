import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login1_widget.dart' show Login1Widget;
import 'package:flutter/material.dart';

class Login1Model extends FlutterFlowModel<Login1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa una dirección de correo valida... ';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El correo no es valido';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? isValid;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<RegisteredUsersRow>? isRegistered;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }

  /// Action blocks.
  Future formValidation(BuildContext context) async {}
}
