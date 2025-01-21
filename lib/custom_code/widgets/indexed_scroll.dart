// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class IndexedScroll extends StatefulWidget {
  const IndexedScroll({
    super.key,
    this.width,
    this.height,
    this.heroSection,
    this.services,
    this.nosotros,
    this.footer,
    this.scrollTo,
    this.separator1,
    this.separator2,
    this.separator3,
    this.carrusel,
    this.separator4,
    this.trabajo,
  });

  final double? width;
  final double? height;
  final Widget Function(int? index)? heroSection;
  final Widget Function(int? index)? services;
  final Widget Function(int? index)? nosotros;
  final Widget Function(int? index)? footer;
  final int? scrollTo;
  final Widget Function(int? index)? separator1;
  final Widget Function(int? index)? separator2;
  final Widget Function(int? index)? separator3;
  final Widget Function(int? index)? carrusel;
  final Widget Function(int? index)? separator4;
  final Widget Function(int? index)? trabajo;

  @override
  State<IndexedScroll> createState() => _IndexedScrollState();
}

class _IndexedScrollState extends State<IndexedScroll> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(11, (_) => GlobalKey());
  int? _previousScrollTo;

  @override
  void initState() {
    super.initState();
    _previousScrollTo = widget.scrollTo;
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToIndex());
  }

  @override
  void didUpdateWidget(IndexedScroll oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scrollTo != _previousScrollTo) {
      _previousScrollTo = widget.scrollTo;
      _scrollToIndex();
    }
  }

  void _scrollToIndex() {
    if (widget.scrollTo != null) {
      int safeIndex = widget.scrollTo!.clamp(0, _sectionKeys.length - 1);
      final context = _sectionKeys[safeIndex].currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            if (widget.heroSection != null)
              KeyedSubtree(key: _sectionKeys[0], child: widget.heroSection!(0)),
            if (widget.separator1 != null)
              KeyedSubtree(key: _sectionKeys[1], child: widget.separator1!(1)),
            if (widget.services != null)
              KeyedSubtree(key: _sectionKeys[2], child: widget.services!(2)),
            if (widget.separator2 != null)
              KeyedSubtree(key: _sectionKeys[3], child: widget.separator2!(3)),
            if (widget.nosotros != null)
              KeyedSubtree(key: _sectionKeys[4], child: widget.nosotros!(4)),
            if (widget.separator4 != null)
              KeyedSubtree(key: _sectionKeys[5], child: widget.separator4!(5)),
            if (widget.trabajo != null)
              KeyedSubtree(key: _sectionKeys[6], child: widget.trabajo!(6)),
            if (widget.separator3 != null)
              KeyedSubtree(key: _sectionKeys[7], child: widget.separator3!(7)),
            if (widget.carrusel != null)
              KeyedSubtree(key: _sectionKeys[8], child: widget.carrusel!(8)),
            if (widget.footer != null)
              KeyedSubtree(key: _sectionKeys[9], child: widget.footer!(9)),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
