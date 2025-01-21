import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'services_detail_model.dart';
export 'services_detail_model.dart';

class ServicesDetailWidget extends StatefulWidget {
  const ServicesDetailWidget({
    super.key,
    required this.serviceName,
    required this.serviceID,
    required this.serviceDescription,
  });

  final String? serviceName;
  final int? serviceID;
  final String? serviceDescription;

  @override
  State<ServicesDetailWidget> createState() => _ServicesDetailWidgetState();
}

class _ServicesDetailWidgetState extends State<ServicesDetailWidget>
    with TickerProviderStateMixin {
  late ServicesDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesDetailModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
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
      'flippableCardOnPageLoadAnimation': AnimationInfo(
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
            borderWidth: 1.0,
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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).customColor5,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 800.0,
                      ),
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.serviceName!,
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Konnect',
                                      color:
                                          FlutterFlowTheme.of(context).glowPink,
                                      fontSize: 50.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .glowPink,
                                          offset: const Offset(0.0, 0.0),
                                          blurRadius: 1.0,
                                        )
                                      ],
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.serviceDescription,
                                    'Sin información',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Konnect',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ).animateOnPageLoad(
                            animationsMap['columnOnPageLoadAnimation']!),
                      ),
                    ),
                  ),
                  FutureBuilder<List<ServiceDetailsRow>>(
                    future: ServiceDetailsTable().queryRows(
                      queryFn: (q) => q
                          .eqOrNull(
                            'service_det_id',
                            widget.serviceID,
                          )
                          .order('order', ascending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ServiceDetailsRow> wrapServiceDetailsRowList =
                          snapshot.data!;

                      return Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(
                            wrapServiceDetailsRowList.length, (wrapIndex) {
                          final wrapServiceDetailsRow =
                              wrapServiceDetailsRowList[wrapIndex];
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Container(
                                width: 300.0,
                                height: 420.0,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 18.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        10.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).glowPink,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(24.0),
                                          topRight: Radius.circular(24.0),
                                        ),
                                        child: Image.network(
                                          wrapServiceDetailsRow.imageUrl!,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        wrapServiceDetailsRow.nombreServicio!,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Red Hat Display',
                                              color: const Color(0xFFCCCCCC),
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .glowPink,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 10.0, 20.0, 10.0),
                                            child: Text(
                                              'Ver más',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Konnect',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 20.0))
                                      .addToEnd(const SizedBox(height: 20.0)),
                                ),
                              ),
                              back: Container(
                                width: 300.0,
                                height: 400.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).customColor5,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 18.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        10.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(18.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).glowPink,
                                    width: 2.0,
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              wrapServiceDetailsRow
                                                  .descripcion!,
                                              textAlign: TextAlign.justify,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Red Hat Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .modernBlue,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ].divide(const SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'flippableCardOnPageLoadAnimation']!),
                          );
                        }),
                      );
                    },
                  ),
                  if ((widget.serviceID == 1) || (widget.serviceID == 2))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Warrantypolicy');
                      },
                      child: Text(
                        'Ver políticas de garantía',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Red Hat Display',
                              color: FlutterFlowTheme.of(context).modernBlue,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
