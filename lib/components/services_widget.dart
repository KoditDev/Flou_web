import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'services_model.dart';
export 'services_model.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  late ServicesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesModel());

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
      child: FutureBuilder<List<ServiciosRow>>(
        future: ServiciosTable().queryRows(
          queryFn: (q) => q.order('order', ascending: true),
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
          List<ServiciosRow> wrapServiciosRowList = snapshot.data!;

          return Wrap(
            spacing: 50.0,
            runSpacing: 60.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: List.generate(wrapServiciosRowList.length, (wrapIndex) {
              final wrapServiciosRow = wrapServiciosRowList[wrapIndex];
              return Container(
                width: 300.0,
                height: 580.0,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Image.network(
                        wrapServiciosRow.imageUrl!,
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      wrapServiciosRow.nombreServicio,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Red Hat Display',
                            color: FlutterFlowTheme.of(context).modernBlue,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      wrapServiciosRow.descripcion!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Red Hat Display',
                            color: const Color(0xFF888888),
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'ServicesDetail',
                          queryParameters: {
                            'serviceName': serializeParam(
                              wrapServiciosRow.nombreServicio,
                              ParamType.String,
                            ),
                            'serviceID': serializeParam(
                              wrapServiciosRow.idServicio,
                              ParamType.int,
                            ),
                            'serviceDescription': serializeParam(
                              wrapServiciosRow.descripcion,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Ver más información',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).modernBlue,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Konnect',
                                  color: FlutterFlowTheme.of(context).neonFlou,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 20.0))
                      .addToEnd(const SizedBox(height: 20.0)),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
