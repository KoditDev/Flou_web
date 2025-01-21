import '/components/carrusel_widget.dart';
import '/components/footer_widget.dart';
import '/components/hero_section_widget.dart';
import '/components/separator_with_title/separator_with_title_widget.dart';
import '/components/separator_without_title/separator_without_title_widget.dart';
import '/components/services_widget.dart';
import '/components/two_in_one_section/two_in_one_section_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'prueba_model.dart';
export 'prueba_model.dart';

class PruebaWidget extends StatefulWidget {
  const PruebaWidget({super.key});

  @override
  State<PruebaWidget> createState() => _PruebaWidgetState();
}

class _PruebaWidgetState extends State<PruebaWidget> {
  late PruebaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PruebaModel());

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
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.IndexedScroll(
              width: double.infinity,
              height: double.infinity,
              scrollTo: 5,
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
            ),
          ),
        ),
      ),
    );
  }
}
