import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login1_model.dart';
export 'login1_model.dart';

class Login1Widget extends StatefulWidget {
  const Login1Widget({super.key});

  @override
  State<Login1Widget> createState() => _Login1WidgetState();
}

class _Login1WidgetState extends State<Login1Widget>
    with TickerProviderStateMixin {
  late Login1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Login1Model());

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(0.0, 200.0),
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
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).customColor5,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).customColor5,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).customColor5,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('HomePAge');
                                    },
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/images/FLOUazul.svg',
                                        width: 200.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Regístrate',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Konnect',
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      fontSize: 50.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .modernBlue,
                                          offset: const Offset(0.0, 0.0),
                                          blurRadius: 1.0,
                                        )
                                      ],
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Text(
                                'Para recibir información, recomendaciones, promociones y mantenerte actualizado con mucho FLOU.',
                                textAlign: TextAlign.center,
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
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model.emailTextController,
                                        focusNode: _model.emailFocusNode,
                                        autofocus: false,
                                        textInputAction: TextInputAction.send,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Konnect',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                          hintText: 'Ingresa tu correo...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Konnect',
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .emailTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: (_model.emailTextController.text ==
                                                  '')
                                          ? null
                                          : () async {
                                              _model.isValid = true;
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                safeSetState(() =>
                                                    _model.isValid = false);
                                                return;
                                              }
                                              if (_model.isValid!) {
                                                _model.isRegistered =
                                                    await RegisteredUsersTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'email',
                                                    _model.emailTextController
                                                        .text,
                                                  ),
                                                );
                                                if (_model.isRegistered
                                                        ?.firstOrNull?.id ==
                                                    null) {
                                                  await RegisteredUsersTable()
                                                      .insert({
                                                    'email': _model
                                                        .emailTextController
                                                        .text,
                                                  });
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        '¡Correo registrado, gracias por confiar en nosotros!',
                                                        style: TextStyle(
                                                          fontFamily: 'Konnect',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                  safeSetState(() {
                                                    _model.emailTextController
                                                        ?.clear();
                                                  });
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: const Text(
                                                        'El correo ya se encuentra registrado.',
                                                        style: TextStyle(
                                                          fontFamily: 'Konnect',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                  safeSetState(() {
                                                    _model.emailTextController
                                                        ?.clear();
                                                  });
                                                }
                                              }

                                              safeSetState(() {});
                                            },
                                      text: 'Registrarse',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .modernBlue,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Konnect',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        disabledColor: const Color(0xFFCCCCCC),
                                        disabledTextColor: const Color(0xFF555555),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 20.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 20.0)),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Flou_08.png',
                    width: 600.0,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
