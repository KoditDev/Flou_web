import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'two_in_one_section_copy_model.dart';
export 'two_in_one_section_copy_model.dart';

class TwoInOneSectionCopyWidget extends StatefulWidget {
  const TwoInOneSectionCopyWidget({super.key});

  @override
  State<TwoInOneSectionCopyWidget> createState() =>
      _TwoInOneSectionCopyWidgetState();
}

class _TwoInOneSectionCopyWidgetState extends State<TwoInOneSectionCopyWidget>
    with TickerProviderStateMixin {
  late TwoInOneSectionCopyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TwoInOneSectionCopyModel());

    animationsMap.addAll({
      'rowOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: const Offset(200.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      constraints: const BoxConstraints(
        maxWidth: 1020.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 100.0,
              height: 10.0,
              child: custom_widgets.VisibilityActionWidget(
                width: 100.0,
                height: 10.0,
                identifier: 'workWithUsVisivility',
                actionOnVisible: () async {
                  if (animationsMap['rowOnActionTriggerAnimation'] != null) {
                    await animationsMap['rowOnActionTriggerAnimation']!
                        .controller
                        .forward(from: 0.0);
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 400.0,
                      height: 600.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trabaja con Nosotros',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: FlutterFlowTheme.of(context).glowPink,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Text(
                            'Únete a nuestro equipo de estrellas',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: FlutterFlowTheme.of(context).glowPink,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Text(
                            '¿Quién dijo que las estrellas solo se ven de noche?\nÚnete a nuestro equipo de estrellas. \n¡Aplica ya!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Red Hat Display',
                                  color: const Color(0xFFCCCCCC),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.5,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('jobApplication');
                                },
                                text: 'Aplica aquí',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).glowPink,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Konnect',
                                        color: const Color(0xFF111111),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ].divide(const SizedBox(width: 20.0)),
                          ),
                        ].divide(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          'assets/images/Diseo_sin_ttulo_(3).png',
                          width: 383.0,
                          height: 600.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ].divide(const SizedBox(width: 80.0)),
              ).animateOnActionTrigger(
                animationsMap['rowOnActionTriggerAnimation']!,
              ),
            ),
          ].divide(const SizedBox(height: 0.0)),
        ),
      ),
    );
  }
}
