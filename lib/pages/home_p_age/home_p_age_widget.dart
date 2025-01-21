import '/backend/supabase/supabase.dart';
import '/components/carrusel_widget.dart';
import '/components/footer_widget.dart';
import '/components/hero_section_widget.dart';
import '/components/separator_with_title/separator_with_title_widget.dart';
import '/components/separator_without_title/separator_without_title_widget.dart';
import '/components/services_widget.dart';
import '/components/two_in_one_section/two_in_one_section_widget.dart';
import '/components/two_in_one_section_copy/two_in_one_section_copy_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_p_age_model.dart';
export 'home_p_age_model.dart';

class HomePAgeWidget extends StatefulWidget {
  const HomePAgeWidget({super.key});

  @override
  State<HomePAgeWidget> createState() => _HomePAgeWidgetState();
}

class _HomePAgeWidgetState extends State<HomePAgeWidget> {
  late HomePAgeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePAgeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.servicesQuery = await ServiciosTable().queryRows(
        queryFn: (q) => q,
      );
      _model.services = _model.servicesQuery!.toList().cast<ServiciosRow>();
      safeSetState(() {});
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
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await launchURL('https://wa.me/584242651290');
          },
          backgroundColor: const Color(0xFF25D366),
          elevation: 8.0,
          child: const FaIcon(
            FontAwesomeIcons.whatsapp,
            color: Colors.white,
            size: 40.0,
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: Container(
            width: 289.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).customColor5,
              borderRadius: BorderRadius.circular(0.0),
              border: Border.all(
                width: 0.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.asset(
                            'assets/images/FLOUazul.svg',
                            width: 150.0,
                            height: 50.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 12.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).modernBlue,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Navegación',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Konnect',
                                  color:
                                      FlutterFlowTheme.of(context).modernBlue,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed('HomePAge');
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Inicio',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .modernBlue,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL('https://wa.me/584242651290');
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.book,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Pide tu cita',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .modernBlue,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            height: 44.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 6.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    color:
                                        FlutterFlowTheme.of(context).modernBlue,
                                    size: 24.0,
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue1 ??=
                                          'Nuestros servicios',
                                    ),
                                    options: _model.services
                                        .map((e) => e.nombreServicio)
                                        .toList(),
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue1 = val);
                                      if (_model.dropDownValue1 !=
                                          'Nuestros servicios') {
                                        context.pushNamed(
                                          'ServicesDetail',
                                          queryParameters: {
                                            'serviceName': serializeParam(
                                              _model.dropDownValue1,
                                              ParamType.String,
                                            ),
                                            'serviceID': serializeParam(
                                              _model.services
                                                  .where((e) =>
                                                      _model.dropDownValue1 ==
                                                      e.nombreServicio)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.idServicio,
                                              ParamType.int,
                                            ),
                                            'serviceDescription':
                                                serializeParam(
                                              _model.services
                                                  .where((e) =>
                                                      _model.dropDownValue1 ==
                                                      e.nombreServicio)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.descripcion,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        safeSetState(() {
                                          _model.dropDownValueController1
                                              ?.reset();
                                        });
                                      }
                                    },
                                    width: 200.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Red Hat Display',
                                          color: FlutterFlowTheme.of(context)
                                              .modernBlue,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText: 'Nuestros servicios',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .customColor5,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.indexScroll = 6;
                              safeSetState(() {});
                              Navigator.pop(context);
                              await Future.delayed(
                                  const Duration(milliseconds: 10));
                              _model.indexScroll = 1000;
                              safeSetState(() {});
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.work,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Trabaja con nosotros',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .modernBlue,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.indexScroll = 4;
                              safeSetState(() {});
                              Navigator.pop(context);
                              await Future.delayed(
                                  const Duration(milliseconds: 10));
                              _model.indexScroll = 1000;
                              safeSetState(() {});
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Nosotros',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .modernBlue,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Login1');
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: double.infinity,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .modernBlue,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Regístrate',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Konnect',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .modernBlue,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.menu_open_rounded,
                            color: FlutterFlowTheme.of(context).modernBlue,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).customColor5,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 3;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 1;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 1;
                          } else {
                            return 1;
                          }
                        }(),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/FLOUamarillo.svg',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 40.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await launchURL(
                                          'https://wa.me/584242651290');
                                    },
                                    child: Text(
                                      'Pide tu cita',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Red Hat Display',
                                            color: const Color(0xFFDDDDDD),
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue2 ??=
                                          'Nuestros servicios',
                                    ),
                                    options: _model.services
                                        .map((e) => e.nombreServicio)
                                        .toList(),
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue2 = val);
                                      if (_model.dropDownValue2 !=
                                          'Nuestros servicios') {
                                        context.pushNamed(
                                          'ServicesDetail',
                                          queryParameters: {
                                            'serviceName': serializeParam(
                                              _model.dropDownValue2,
                                              ParamType.String,
                                            ),
                                            'serviceID': serializeParam(
                                              _model.services
                                                  .where((e) =>
                                                      _model.dropDownValue2 ==
                                                      e.nombreServicio)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.idServicio,
                                              ParamType.int,
                                            ),
                                            'serviceDescription':
                                                serializeParam(
                                              _model.services
                                                  .where((e) =>
                                                      _model.dropDownValue2 ==
                                                      e.nombreServicio)
                                                  .toList()
                                                  .firstOrNull
                                                  ?.descripcion,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        safeSetState(() {
                                          _model.dropDownValueController2
                                              ?.reset();
                                        });
                                      }
                                    },
                                    width: 180.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Red Hat Display',
                                          color: const Color(0xFFDDDDDD),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText: 'Nuestros servicios',
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF888888),
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .customColor5,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.indexScroll = 4;
                                      safeSetState(() {});
                                      await Future.delayed(
                                          const Duration(milliseconds: 10));
                                      _model.indexScroll = 1000;
                                      safeSetState(() {});
                                    },
                                    child: Text(
                                      'Nosotros',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Red Hat Display',
                                            color: const Color(0xFFDDDDDD),
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.indexScroll = 6;
                                      safeSetState(() {});
                                      await Future.delayed(
                                          const Duration(milliseconds: 10));
                                      _model.indexScroll = 1000;
                                      safeSetState(() {});
                                    },
                                    child: Text(
                                      'Trabaja con nosotros',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Red Hat Display',
                                            color: const Color(0xFFDDDDDD),
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Login1');
                                    },
                                    child: const Icon(
                                      Icons.person_rounded,
                                      color: Color(0xFFDDDDDD),
                                      size: 24.0,
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  desktop: false,
                                ))
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      scaffoldKey.currentState!.openDrawer();
                                    },
                                    child: const Icon(
                                      Icons.menu,
                                      color: Color(0xFFDDDDDD),
                                      size: 24.0,
                                    ),
                                  ),
                              ].divide(const SizedBox(width: 20.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            centerTitle: false,
            toolbarHeight: 100.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.IndexedScroll(
              width: double.infinity,
              height: double.infinity,
              scrollTo: _model.indexScroll,
              heroSection: (int? index) => const HeroSectionWidget(),
              services: (int? index) => const ServicesWidget(),
              nosotros: (int? index) => const TwoInOneSectionWidget(),
              footer: (int? index) => const FooterWidget(),
              separator1: (int? index) => SeparatorWithTitleWidget(
                title: 'Conoce nuestros servicios',
                textColor: FlutterFlowTheme.of(context).neonFlou,
              ),
              separator2: (int? index) => const SeparatorWithoutTitleWidget(),
              separator3: (int? index) => const SeparatorWithoutTitleWidget(),
              carrusel: (int? index) => const CarruselWidget(),
              separator4: (int? index) => const SeparatorWithoutTitleWidget(),
              trabajo: (int? index) => const TwoInOneSectionCopyWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
