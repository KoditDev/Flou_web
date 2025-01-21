import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'separator_with_title_model.dart';
export 'separator_with_title_model.dart';

class SeparatorWithTitleWidget extends StatefulWidget {
  const SeparatorWithTitleWidget({
    super.key,
    required this.title,
    required this.textColor,
  });

  final String? title;
  final Color? textColor;

  @override
  State<SeparatorWithTitleWidget> createState() =>
      _SeparatorWithTitleWidgetState();
}

class _SeparatorWithTitleWidgetState extends State<SeparatorWithTitleWidget> {
  late SeparatorWithTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeparatorWithTitleModel());

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
      height: 300.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Konnect',
                  color: widget.textColor,
                  fontSize: 50.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: valueOrDefault<Color>(
                        widget.textColor,
                        Colors.white,
                      ),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 1.0,
                    )
                  ],
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
