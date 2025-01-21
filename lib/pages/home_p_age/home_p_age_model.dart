import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_p_age_widget.dart' show HomePAgeWidget;
import 'package:flutter/material.dart';

class HomePAgeModel extends FlutterFlowModel<HomePAgeWidget> {
  ///  Local state fields for this page.

  List<ServiciosRow> services = [];
  void addToServices(ServiciosRow item) => services.add(item);
  void removeFromServices(ServiciosRow item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, ServiciosRow item) =>
      services.insert(index, item);
  void updateServicesAtIndex(int index, Function(ServiciosRow) updateFn) =>
      services[index] = updateFn(services[index]);

  int? indexScroll;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomePAge widget.
  List<ServiciosRow>? servicesQuery;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
