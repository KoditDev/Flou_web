import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'carrusel_model.dart';
export 'carrusel_model.dart';

class CarruselWidget extends StatefulWidget {
  const CarruselWidget({super.key});

  @override
  State<CarruselWidget> createState() => _CarruselWidgetState();
}

class _CarruselWidgetState extends State<CarruselWidget>
    with TickerProviderStateMixin {
  late CarruselModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarruselModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 40000.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-1590.0, 0.0),
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
    return SizedBox(
      height: 250.0, // Altura fija para el carrusel
      child: OverflowBox(
        maxWidth: double.infinity, // Permite que el contenido se desborde
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(4).png',
                  'Herramientas Metálicas:\nSiempre desinfectadas,\ngarantizando tu tranquilidad.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(5).png',
                  'Herramientas Desechables:\nTodo exclusivo para ti,\nnuevo y seguro.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(6).png',
                  'Equipo de Protección\n en nuestro personal.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(7).png',
                  'Higiene del Área:\nEspacios impecables\npara tu confianza.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(8).png',
                  'Kit Personalizado:\nDiseñado solo para ti,\ncomodidad y seguridad.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(9).png',
                  'Te recibimos con atención especial,\n¡te lo mereces!',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(10).png',
                  'Mientras te atendemos,\nconoceras los beneficios\nde nuestro servicio.',
                ),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(4).png',
                  'Herramientas Metálicas:\nSiempre desinfectadas,\ngarantizando tu tranquilidad.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(5).png',
                  'Herramientas Desechables:\nTodo exclusivo para ti,\nnuevo y seguro.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(6).png',
                  'Equipo de Protección\n en nuestro personal.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(7).png',
                  'Higiene del Área:\nEspacios impecables\npara tu confianza.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(8).png',
                  'Kit Personalizado:\nDiseñado solo para ti,\ncomodidad y seguridad.',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(9).png',
                  'Te recibimos con atención especial,\n¡te lo mereces!',
                ),
                _buildCarouselItem(
                  context,
                  'assets/images/Diseo_sin_ttulo_(10).png',
                  'Mientras te atendemos,\nconoceras los beneficios\nde nuestro servicio.',
                ),
              ],
            ),
          ].divide(const SizedBox(width: 0.0)),
        ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
      ),
    );
  }

  Widget _buildCarouselItem(
    BuildContext context,
    String imagePath,
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 200.0, // Ancho fijo para las imágenes
              height: 150.0,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10.0), // Espacio entre la imagen y el texto
          SizedBox(
            width: 200.0, // Ancho fijo para el texto
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Red Hat Display',
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
              maxLines: 3, // Máximo de líneas para el texto
              overflow: TextOverflow.ellipsis, // Puntos suspensivos si el texto es muy largo
            ),
          ),
        ],
      ),
    );
  }
}