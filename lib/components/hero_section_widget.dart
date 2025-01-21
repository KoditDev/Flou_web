import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hero_section_model.dart';
export 'hero_section_model.dart';

class HeroSectionWidget extends StatefulWidget {
  const HeroSectionWidget({super.key});

  @override
  State<HeroSectionWidget> createState() => _HeroSectionWidgetState();
}

class _HeroSectionWidgetState extends State<HeroSectionWidget>
    with TickerProviderStateMixin {
  late HeroSectionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeroSectionModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(-200.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
      height: 600.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: 100.0,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400.0,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ven y recarga tu',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: const Color(0xFFDDDDDD),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                  lineHeight: 1.5,
                                ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/FLOUrosa.svg',
                              width: double.infinity,
                              height: 150.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'Lo tienes tú, \nlo tienen tus uñas',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color: const Color(0xFFDDDDDD),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                  lineHeight: 1.5,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://wa.me/584242651290');
                                  },
                                  text: 'Pide tu cita',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).glowPink,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Konnect',
                                          color: const Color(0xFF111111),
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
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Expanded(
              child: Container(
                width: 100.0,
                height: double.infinity,
                decoration: const BoxDecoration(),
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    phone: false,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Flou_02.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
