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
      child: ClipRect(
        child: OverflowBox(
          maxWidth: double.infinity,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(4).png',
                text: 'Herramientas Metálicas:\nSiempre desinfectadas,\ngarantizando tu tranquilidad.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(5).png',
                text: 'Herramientas Desechables:\nTodo exclusivo para ti,\nnuevo y seguro.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(6).png',
                text: 'Equipo de Protección\n en nuestro personal.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(7).png',
                text: 'Higiene del Área:\nEspacios impecables\npara tu confianza.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(8).png',
                text: 'Kit Personalizado:\nDiseñado solo para ti,\ncomodidad y seguridad.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(9).png',
                text: 'Te recibimos con atención especial,\n¡te lo mereces!',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(10).png',
                text: 'Mientras te atendemos,\nconoceras los beneficios\nde nuestro servicio.',
              ),
              // Repetir los elementos para la animación continua
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(4).png',
                text: 'Herramientas Metálicas:\nSiempre desinfectadas,\ngarantizando tu tranquilidad.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(5).png',
                text: 'Herramientas Desechables:\nTodo exclusivo para ti,\nnuevo y seguro.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(6).png',
                text: 'Equipo de Protección\n en nuestro personal.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(7).png',
                text: 'Higiene del Área:\nEspacios impecables\npara tu confianza.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(8).png',
                text: 'Kit Personalizado:\nDiseñado solo para ti,\ncomodidad y seguridad.',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(9).png',
                text: 'Te recibimos con atención especial,\n¡te lo mereces!',
              ),
              _buildCarruselItem(
                imagePath: 'assets/images/Diseo_sin_ttulo_(10).png',
                text: 'Mientras te atendemos,\nconoceras los beneficios\nde nuestro servicio.',
              ),
            ].divide(const SizedBox(width: 10.0)), // Espacio entre elementos
          ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
        ),
      ),
    );
  }

  Widget _buildCarruselItem({required String imagePath, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 200.0,
              height: 150.0,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Red Hat Display',
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}