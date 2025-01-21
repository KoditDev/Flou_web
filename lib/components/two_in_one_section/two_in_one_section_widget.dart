import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'two_in_one_section_model.dart';
export 'two_in_one_section_model.dart';

class TwoInOneSectionWidget extends StatefulWidget {
  const TwoInOneSectionWidget({super.key});

  @override
  State<TwoInOneSectionWidget> createState() => _TwoInOneSectionWidgetState();
}

class _TwoInOneSectionWidgetState extends State<TwoInOneSectionWidget>
    with TickerProviderStateMixin {
  late TwoInOneSectionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TwoInOneSectionModel());

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
            begin: const Offset(-200.0, 0.0),
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
                identifier: 'NosotrosVisibilityDetector',
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          'assets/images/Flou_03.png',
                          width: 383.0,
                          height: 600.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 400.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nosotros',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: FlutterFlowTheme.of(context).neonFlou,
                                  fontSize: 50.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Text(
                            'Mucha actitud, demasiado Flou',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: FlutterFlowTheme.of(context).neonFlou,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                  lineHeight: 1.2,
                                ),
                          ),
                          Text(
                            'Somos un oasis de belleza y felicidad que redefine el cuidado de uñas, depilación, cejas y pestañas. \nCon un enfoque en bioseguridad, productos de alta calidad, procesos estandarizados y tecnología, creamos una experiencia diseñada para impactar positivamente a cada persona, renovándola y recargándola de FLOU.\n',
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
                                  await launchURL('https://wa.me/584242651290');
                                },
                                text: 'Pide tu cita',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).neonFlou,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Konnect',
                                        color: const Color(0xFF333333),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Login1');
                                },
                                text: 'Regístrate',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFEBEBEB),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Konnect',
                                        color: const Color(0xFF333333),
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
