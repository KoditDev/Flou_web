import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'separator_without_title_model.dart';
export 'separator_without_title_model.dart';

class SeparatorWithoutTitleWidget extends StatefulWidget {
  const SeparatorWithoutTitleWidget({super.key});

  @override
  State<SeparatorWithoutTitleWidget> createState() =>
      _SeparatorWithoutTitleWidgetState();
}

class _SeparatorWithoutTitleWidgetState
    extends State<SeparatorWithoutTitleWidget> {
  late SeparatorWithoutTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeparatorWithoutTitleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: valueOrDefault<double>(
        () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 100.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 100.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 200.0;
          } else {
            return 200.0;
          }
        }(),
        100.0,
      ),
      decoration: const BoxDecoration(),
    );
  }
}
